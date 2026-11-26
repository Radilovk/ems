.class public final Lcom/isaigu/gymapp/widget/XemsModuleInfo;
.super Ljava/lang/Object;
.source "XemsModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;,
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$Toggle;,
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;,
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;,
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$ChipClick;
    }
.end annotation


# static fields
.field public static final VR:Ljava/lang/String; = "vr"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 12

    .prologue
    .line 300
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    move-result-object v2

    .line 301
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->open(Ljava/lang/String;)Z

    move-result v3

    .line 302
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v4, 0x280

    invoke-static {p0, v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v4

    .line 305
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 306
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 307
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_fc

    const/high16 v0, 0x41a00000    # 20.0f

    :goto_27
    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    const/4 v7, 0x1

    invoke-static {p0, v1, v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 308
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 309
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 310
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 311
    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    const/16 v7, 0x2e

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 312
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget v7, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    const/16 v8, 0x88

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 315
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 317
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    const/high16 v1, 0x41880000    # 17.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {p0, v0, v1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 318
    const/4 v1, 0x0

    const v7, 0x3f933333    # 1.15f

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 319
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    const-string v0, "vr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "\u2713 \u0412\u0438\u043d\u0430\u0433\u0438 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    const-string v1, "\u2713 Always on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 322
    :goto_93
    const/high16 v7, 0x41500000    # 13.0f

    if-eqz v3, :cond_117

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_99
    const/4 v8, 0x1

    .line 320
    invoke-static {p0, v1, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 323
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 325
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 326
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const-string v1, "\u041a\u0430\u043a\u0432\u043e \u0442\u0438 \u0434\u0430\u0432\u0430"

    const-string v5, "What it gives you"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v5, 0x16

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 332
    const/4 v0, 0x0

    :goto_e0
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_11d

    .line 333
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    invoke-static {p0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->valueRow(Landroid/app/Activity;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    if-nez v0, :cond_11a

    const/4 v1, 0x0

    :goto_f2
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_e0

    .line 307
    :cond_fc
    const/high16 v0, 0x41e00000    # 28.0f

    goto/16 :goto_27

    .line 321
    :cond_100
    if-eqz v3, :cond_10c

    const-string v0, "\u2713 \u0412\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u0432 \u0430\u0431\u043e\u043d\u0430\u043c\u0435\u043d\u0442\u0430 \u0442\u0438"

    const-string v1, "\u2713 Included in your subscription"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_93

    .line 322
    :cond_10c
    const-string v0, "\ud83d\udd12 \u041d\u0435 \u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u0432 \u0430\u0431\u043e\u043d\u0430\u043c\u0435\u043d\u0442\u0430 \u0442\u0438"

    const-string v1, "\ud83d\udd12 Not in your subscription"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_93

    :cond_117
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_99

    .line 333
    :cond_11a
    const/16 v1, 0x8

    goto :goto_f2

    .line 335
    :cond_11d
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->science:[Ljava/lang/String;

    if-eqz v0, :cond_19f

    .line 338
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const-string v1, "\u041d\u0430 \u043a\u0430\u043a\u0432\u043e \u0441\u0435 \u043e\u0441\u043d\u043e\u0432\u0430\u0432\u0430"

    const-string v5, "What it stands on"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v5, 0x16

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 340
    const/4 v0, 0x0

    :goto_142
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->science:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_161

    .line 341
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->science:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->valueRow(Landroid/app/Activity;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    if-nez v0, :cond_15e

    const/4 v1, 0x0

    :goto_154
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_142

    .line 341
    :cond_15e
    const/16 v1, 0x8

    goto :goto_154

    .line 343
    :cond_161
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->more:[[Ljava/lang/String;

    if-eqz v0, :cond_19f

    .line 345
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->more:[[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->moreBlock(Landroid/app/Activity;[[Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 346
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    const-string v1, "\u041f\u0440\u043e\u0447\u0435\u0442\u0438 \u043e\u0449\u0435  \u25be"

    const-string v5, "Read more  \u25be"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-static {p0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 348
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Toggle;

    invoke-direct {v5, v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Toggle;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v5, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v6, 0xc

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    :cond_19f
    if-eqz v3, :cond_24b

    .line 356
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const-string v1, "\u041a\u0430\u043a \u0441\u0435 \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v3, "How to use it"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0x16

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    const/4 v0, 0x0

    :goto_1b9
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1dc

    .line 358
    iget-object v3, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    add-int/lit8 v1, v0, 0x1

    iget-object v5, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    invoke-static {p0, v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stepRow(Landroid/app/Activity;ILjava/lang/String;I)Landroid/view/View;

    move-result-object v5

    if-nez v0, :cond_1d9

    const/4 v1, 0x0

    :goto_1cf
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b9

    .line 358
    :cond_1d9
    const/16 v1, 0xa

    goto :goto_1cf

    .line 360
    :cond_1dc
    const-string v0, "\u0420\u0430\u0437\u0431\u0440\u0430\u0445"

    const-string v1, "Got it"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_249

    const/4 v0, 0x2

    :goto_1e7
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v3, 0x0

    invoke-direct {v1, v4, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {v3, v5, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    if-eqz p2, :cond_238

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041e\u0442\u0432\u043e\u0440\u0438 "

    const-string v3, "Open "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 365
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    invoke-direct {v1, v4, p2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const v2, 0x3fb33333    # 1.4f

    const/16 v3, 0xa

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_238
    :goto_238
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 378
    const v0, 0x3f666666    # 0.9f

    invoke-static {p0, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 379
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stagger(Landroid/widget/LinearLayout;)V

    .line 380
    return-void

    .line 360
    :cond_249
    const/4 v0, 0x0

    goto :goto_1e7

    .line 369
    :cond_24b
    const-string v0, "\u041d\u0435 \u0441\u0435\u0433\u0430"

    const-string v1, "Not now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 370
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    const-string v0, "\u0410\u0431\u043e\u043d\u0438\u0440\u0430\u0439 \u0441\u0435"

    const-string v1, "Subscribe"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 373
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const v2, 0x3fb33333    # 1.4f

    const/16 v3, 0xa

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_238
.end method

.method static entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;
    .registers 11

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;-><init>()V

    .line 48
    const-string v1, "timer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 49
    const-string v1, "\u23f1"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 50
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 51
    const-string v1, "\u0422\u0430\u0439\u043c\u0435\u0440"

    const-string v2, "Timer"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 52
    const-string v1, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u0438 \u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438, \u043a\u043e\u0438\u0442\u043e \u0432\u044a\u0440\u0432\u044f\u0442 \u0441\u0430\u043c\u0438"

    const-string v2, "Intervals and block programs that run by themselves"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 53
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0441 \u044f\u0441\u043d\u0430 \u0441\u0442\u0440\u0443\u043a\u0442\u0443\u0440\u0430 \u2014 \u0440\u0430\u0431\u043e\u0442\u0430 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0441\u0430\u043c\u0438, \u0430 \u0442\u0438 \u0441\u043b\u0435\u0434\u0438\u0448 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0442\u0435\u0445\u043d\u0438\u043a\u0430\u0442\u0430."

    const-string v3, "A clear structure \u2014 work and rest switch by themselves while you watch the client and the technique."

    .line 54
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0411\u043b\u043e\u043a\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430, \u043e\u0441\u043d\u043e\u0432\u043d\u0430 \u0447\u0430\u0441\u0442 \u0438 \u0440\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u0441 \u0440\u0430\u0437\u043b\u0438\u0447\u043d\u0430 \u0441\u0438\u043b\u0430, \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430 \u0432 \u0435\u0434\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v3, "Block programs \u2014 warm-up, main part and cool-down with their own strength, frequency and width in one session."

    .line 56
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0417\u0432\u0443\u043a\u043e\u0432 \u0441\u0438\u0433\u043d\u0430\u043b \u043f\u0440\u0438 \u0432\u0441\u044f\u043a\u0430 \u0441\u043c\u044f\u043d\u0430 \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0437\u043d\u0430\u0435 \u043a\u043e\u0433\u0430 \u0434\u0430 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0438 \u0438 \u043a\u043e\u0433\u0430 \u0434\u0430 \u043e\u0442\u043f\u0443\u0441\u043d\u0435."

    const-string v3, "A sound at every switch \u2014 the client knows when to work and when to relax."

    .line 58
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u043b\u044e\u0431\u0438\u043c\u0438\u0442\u0435 \u0441\u0445\u0435\u043c\u0438 \u0441\u0435 \u043f\u0443\u0441\u043a\u0430\u0442 \u0441 \u0435\u0434\u043d\u043e \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435, \u0435\u0434\u043d\u0430\u043a\u0432\u043e \u043e\u0442 \u0432\u0441\u0435\u043a\u0438 \u0442\u0440\u0435\u043d\u044c\u043e\u0440."

    const-string v3, "Saved programs \u2014 favourite schemes start with one tap, the same for every trainer."

    .line 60
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u0412\u044a\u0440\u0432\u0438 \u0441 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u2014 \u0442\u0440\u044a\u0433\u0432\u0430 \u0441\u044a\u0441 \u0441\u0442\u0430\u0440\u0442\u0430 \u0438 \u0441\u043f\u0438\u0440\u0430 \u043f\u0440\u0438 \u043f\u0430\u0443\u0437\u0430 \u0438\u043b\u0438 \u043a\u0440\u0430\u0439."

    const-string v3, "Runs with the training \u2014 starts with it, stops on pause or at the end."

    .line 62
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 65
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043f\u043b\u043e\u0447\u043a\u0430\u0442\u0430 \u201e\u0422\u0430\u0439\u043c\u0435\u0440\u201c."

    const-string v3, "Tap the Timer tile."

    .line 66
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0417\u0430\u0434\u0430\u0439 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b (\u0440\u0430\u0431\u043e\u0442\u0430, \u043f\u043e\u0447\u0438\u0432\u043a\u0430, \u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f) \u0438\u043b\u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043e\u0442 \u201e\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u201c."

    const-string v3, "Set an interval (work, rest, repeats) or pick a block program under Programs."

    .line 67
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439\u201c \u2014 \u0442\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0435 \u0433\u043e\u0442\u043e\u0432."

    const-string v3, "Press Activate \u2014 the timer is ready."

    .line 69
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041f\u0443\u0441\u043d\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u2014 \u0442\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0442\u0440\u044a\u0433\u0432\u0430 \u0441 \u043d\u0435\u044f."

    const-string v3, "Start the training \u2014 the timer starts with it."

    .line 70
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u201e\u0417\u0430\u043f\u0430\u0437\u0438\u201c \u043f\u0430\u0437\u0438 \u0441\u0445\u0435\u043c\u0430\u0442\u0430 \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043f\u044a\u0442, \u201e\u0417\u0432\u0443\u043a\u201c \u0441\u043c\u0435\u043d\u044f \u0441\u0438\u0433\u043d\u0430\u043b\u0430."

    const-string v3, "Save keeps the scheme for next time; Sound changes the signal."

    .line 71
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    .line 284
    :goto_9c
    return-object v0

    .line 74
    :cond_9d
    const-string v1, "music"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 75
    const-string v1, "\u266b"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 76
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 77
    const-string v1, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v2, "Music"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 78
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0442 \u0440\u0438\u0442\u044a\u043c\u0430 \u043d\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430"

    const-string v2, "The impulses follow the music"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 79
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432 \u0440\u0438\u0442\u044a\u043c \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0441\u043b\u0435\u0434\u0432\u0430 \u0431\u0438\u0439\u0442\u0430 \u0438 \u0434\u0438\u043d\u0430\u043c\u0438\u043a\u0430\u0442\u0430 \u043d\u0430 \u043f\u0435\u0441\u0435\u043d\u0442\u0430 \u0432 \u0440\u0435\u0430\u043b\u043d\u043e \u0432\u0440\u0435\u043c\u0435."

    const-string v3, "Training in rhythm \u2014 the impulse strength follows the beat and the dynamics of the song in real time."

    .line 80
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u043e\u0432\u0435\u0447\u0435 \u043c\u043e\u0442\u0438\u0432\u0430\u0446\u0438\u044f \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0443\u0441\u0435\u0449\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0441 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e \u0438 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u043c\u0438\u043d\u0430\u0432\u0430 \u043d\u0435\u0443\u0441\u0435\u0442\u043d\u043e."

    const-string v3, "More motivation \u2014 the client feels the music with the whole body and the time flies."

    .line 82
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0411\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e \u2014 \u0442\u0430\u0432\u0430\u043d\u044a\u0442 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0435 \u0441\u0435 \u043d\u0430\u0434\u0445\u0432\u044a\u0440\u043b\u044f."

    const-string v3, "Safe \u2014 each client\'s strength ceiling is never exceeded."

    .line 84
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0441\u0435 \u0441\u0430\u043c \u2014 \u0440\u0438\u0442\u044a\u043c, \u043c\u0438\u043d\u0438\u043c\u0443\u043c, \u043c\u0435\u043a\u043e\u0442\u0430 \u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0441\u043f\u043e\u0440\u0435\u0434 \u0432\u0441\u044f\u043a\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u043f\u0435\u0441\u0435\u043d\u0442\u0430."

    const-string v3, "Tunes itself \u2014 rhythm, minimum, softness and frequency follow each part of the song."

    .line 86
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u0422\u043e\u0447\u043d\u043e \u043d\u0430 \u0443\u0434\u0430\u0440\u0430 \u2014 \u0437\u0430\u0431\u0430\u0432\u044f\u043d\u0435\u0442\u043e \u043f\u043e Bluetooth \u0434\u043e \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u0441\u0435 \u0438\u0437\u043c\u0435\u0440\u0432\u0430 \u0438 \u043a\u043e\u043c\u043f\u0435\u043d\u0441\u0438\u0440\u0430."

    const-string v3, "Right on the beat \u2014 the Bluetooth delay to the suit is measured and compensated."

    .line 88
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 91
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0430 \u201e\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c \u0438 \u0437\u0430\u0434\u0430\u0439 \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u043e\u0442 \u043a\u0440\u044a\u0433\u043e\u0432\u0438\u044f \u0441\u043b\u0430\u0439\u0434\u0435\u0440 \u043d\u0430 \u0440\u0435\u0434\u0430 \u043c\u0443."

    const-string v3, "Add the client on the Training screen and set the strength ceiling with the round slider on their row."

    .line 92
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u041c\u0443\u0437\u0438\u043a\u0430\u201c \u0438 \u0434\u043e\u0431\u0430\u0432\u0438 \u043f\u0435\u0441\u043d\u0438 \u0441 \u2630."

    const-string v3, "Tap Music and add songs with \u2630."

    .line 94
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u25b6 \u2014 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u0441 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430."

    const-string v3, "Press \u25b6 \u2014 the impulses start with the music."

    .line 95
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0421 \u2699 \u043f\u0440\u043e\u043c\u0435\u043d\u0438 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e (\u0420\u0438\u0442\u044a\u043c, \u041c\u0438\u043d\u0438\u043c\u0443\u043c, \u041c\u0435\u043a\u043e\u0442\u0430, \u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442) \u0438\u043b\u0438 \u043e\u0441\u0442\u0430\u0432\u0438 \u201e\u0410\u0432\u0442\u043e\u201c."

    const-string v3, "Use \u2699 to change the feel (Rhythm, Minimum, Softness, Sensitivity) or keep Auto."

    .line 96
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u2715 \u0441\u043f\u0438\u0440\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0438 \u0437\u0430\u0442\u0432\u0430\u0440\u044f \u043f\u043b\u0435\u0439\u044a\u0440\u0430."

    const-string v3, "\u2715 stops the music and closes the player."

    .line 98
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 100
    :cond_131
    const-string v1, "pulse"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 101
    const-string v1, "\u2665"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 102
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 103
    const-string v1, "\u041f\u0443\u043b\u0441"

    const-string v2, "Heart rate"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 104
    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043d\u0430 \u0436\u0438\u0432\u043e \u0438 \u0437\u0430\u0449\u0438\u0442\u0430 \u043e\u0442 \u043f\u0440\u0435\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    const-string v2, "Live heart rate and overload protection"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 105
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043f\u0440\u0435\u0434 \u043e\u0447\u0438\u0442\u0435 \u0442\u0438 \u2014 \u0433\u043e\u043b\u044f\u043c \u0446\u0438\u0444\u0435\u0440\u0431\u043b\u0430\u0442 \u0441\u044a\u0441 \u0437\u043e\u043d\u0438\u0442\u0435, \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430 Xiaomi Smart Band \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "The heart rate in front of you \u2014 a big dial with zones, from a Xiaomi Smart Band on the client\'s wrist."

    .line 106
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430\u043d\u0435 \u2014 \u0449\u043e\u043c \u043f\u0443\u043b\u0441\u044a\u0442 \u0442\u0440\u044a\u0433\u043d\u0435 \u043d\u0430\u0434 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0430\u0442\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430, \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u0441\u0432\u0430\u043b\u044f \u043f\u043b\u0430\u0432\u043d\u043e. \u0421\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430 \u0433\u043b\u0435\u0434\u0430 20 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043d\u0430\u043f\u0440\u0435\u0434 \u0438 \u0440\u0435\u0430\u0433\u0438\u0440\u0430 \u043d\u0430\u0432\u0440\u0435\u043c\u0435."

    const-string v3, "Automatic reduction \u2014 when the heart rate heads above the safe limit, the load goes down smoothly. The system looks 20 seconds ahead and reacts in time."

    .line 108
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0412\u0440\u044a\u0449\u0430 \u0441\u0435 \u0441\u0430\u043c\u043e \u2014 \u043a\u043e\u0433\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0443\u0441\u043f\u043e\u043a\u043e\u0438, \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u0432\u0434\u0438\u0433\u0430 \u043e\u0431\u0440\u0430\u0442\u043d\u043e, \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0430\u0434 \u0437\u0430\u0434\u0430\u0434\u0435\u043d\u043e\u0442\u043e \u043e\u0442 \u0442\u0435\u0431."

    const-string v3, "Comes back by itself \u2014 once the heart rate settles, the load goes back up, never above what you set."

    .line 110
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041b\u0438\u0447\u043d\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430 \u2014 30 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0432 \u043f\u043e\u043a\u043e\u0439 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430\u0442 \u043f\u0440\u0430\u0433\u0430 \u0437\u0430 \u043a\u043e\u043d\u043a\u0440\u0435\u0442\u043d\u0438\u044f \u0447\u043e\u0432\u0435\u043a."

    const-string v3, "A personal limit \u2014 30 seconds of calibration at rest set the threshold for this person."

    .line 112
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u041a\u0430\u043b\u043e\u0440\u0438\u0438 \u0438 \u0433\u0440\u0430\u0444\u0438\u043a\u0430 \u043d\u0430 \u043f\u0443\u043b\u0441\u0430 \u0437\u0430 \u0446\u044f\u043b\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v3, "Calories and a heart-rate chart for the whole session."

    .line 114
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 116
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0432\u0435\u0434\u043d\u044a\u0436: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430."

    const-string v3, "Set up the band once: Settings \u2192 Band."

    .line 117
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0421\u043b\u043e\u0436\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0434\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u041f\u0443\u043b\u0441\u201c."

    const-string v3, "Put the band on the client and tap Heart rate."

    .line 118
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 \u2014 30 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0432 \u043f\u043e\u043a\u043e\u0439."

    const-string v3, "Press \u21bb on the dial \u2014 30 seconds of calibration at rest."

    .line 119
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u201e\u0410\u0432\u0442\u043e-\u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430\u043d\u0435\u201c, \u0430\u043a\u043e \u0438\u0441\u043a\u0430\u0448 \u0441\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430 \u0434\u0430 \u043f\u0430\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0441\u0430\u043c\u0430 (\u043f\u043e \u043f\u043e\u0434\u0440\u0430\u0437\u0431\u0438\u0440\u0430\u043d\u0435 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u043e)."

    const-string v3, "Turn on Auto-reduce if you want the system to protect the client (off by default)."

    .line 120
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u0422\u0432\u043e\u044f\u0442\u0430 \u0440\u044a\u0447\u043d\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u0432\u0438\u043d\u0430\u0433\u0438 \u0435 \u0441 \u043f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442."

    const-string v3, "Your manual strength change always wins."

    .line 122
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 124
    :cond_1c5
    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_265

    .line 125
    const-string v1, "A"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 126
    const v1, -0xd95966

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 127
    const-string v1, "\u0410\u0432\u0442\u043e"

    const-string v2, "Auto"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 128
    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0441 \u0432\u0433\u0440\u0430\u0434\u0435\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438"

    const-string v2, "Ready programs with built-in limits"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 129
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "13 \u0433\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u043f\u043e \u0446\u0435\u043b \u2014 \u0441\u0442\u044f\u0433\u0430\u043d\u0435, \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435 \u0438 \u0437\u0434\u0440\u0430\u0432\u0435; \u0430\u043a\u0442\u0438\u0432\u043d\u0438 \u0438 \u0432 \u043f\u043e\u043a\u043e\u0439 (\u0430\u043d\u0442\u0438\u0446\u0435\u043b\u0443\u043b\u0438\u0442, \u0434\u0440\u0435\u043d\u0430\u0436, \u0433\u0440\u044a\u0431, 50+, \u0441\u043b\u0435\u0434\u0440\u043e\u0434\u0438\u043b\u043d\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435)."

    const-string v3, "13 ready programs by goal \u2014 toning, weight loss and health; active and at rest (anti-cellulite, drainage, back, 50+, postpartum)."

    .line 130
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041d\u0430\u0433\u043b\u0430\u0441\u0435\u043d\u0438 \u043f\u043e \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u2014 \u043f\u043e\u043b\u044a\u0442, \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430, \u0440\u044a\u0441\u0442\u044a\u0442, \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e \u0441\u043c\u0435\u043d\u044f\u0442 \u0432\u0440\u0435\u043c\u0435\u0442\u043e, \u0441\u0438\u043b\u0430\u0442\u0430 \u0438 \u0437\u043e\u043d\u0438\u0442\u0435."

    const-string v3, "Fitted to the client \u2014 sex, age, height, weight and health change the time, strength and zones."

    .line 132
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 \u0441\u0430\u043c\u043e \u0442\u0432\u043e\u044f \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0438\u0437\u0431\u0438\u0440\u0430 \u043a\u0430\u043d\u0430\u043b\u0438\u0442\u0435, \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430, \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0438 \u0440\u0438\u0442\u044a\u043c\u0430, \u043d\u0438\u043a\u043e\u0433\u0430 \u0441\u0438\u043b\u0430\u0442\u0430."

    const-string v3, "The strength is yours alone \u2014 the program picks the channels, frequency, pauses and rhythm, never the strength."

    .line 134
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0413\u0440\u0443\u043f\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u2014 \u0435\u0434\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438, \u043d\u043e \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0430 \u0437\u0430 \u0432\u0441\u0435\u043a\u0438 \u0447\u043e\u0432\u0435\u043a \u043f\u043e\u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v3, "Group training \u2014 one program for everyone, with limits and strength per person."

    .line 136
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u0415\u0434\u043d\u0430\u043a\u0432\u043e \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e \u2014 \u043d\u043e\u0432 \u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u043f\u0440\u043e\u0432\u0435\u0436\u0434\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043a\u0430\u0442\u043e \u043e\u043f\u0438\u0442\u0435\u043d."

    const-string v3, "Consistent quality \u2014 a new trainer runs a session like an experienced one."

    .line 138
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string v3, "\u041e\u0442\u0447\u0435\u0442\u044a\u0442 \u0432\u043b\u0438\u0437\u0430 \u0432 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u043a\u0430\u0440\u0442\u043e\u043d."

    const-string v4, "The report goes into the client\'s card."

    .line 140
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 142
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u0410\u0432\u0442\u043e\u201c \u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u0446\u0435\u043b \u2014 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0435 \u043f\u044a\u0440\u0432\u0430."

    const-string v3, "Tap Auto and pick a goal \u2014 the recommended program comes first."

    .line 143
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 (\u043f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0435 \u043d\u0430 \u0435\u0434\u0438\u043d \u0440\u0435\u0434) \u0438 \u043f\u043e\u0442\u0432\u044a\u0440\u0434\u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e."

    const-string v3, "Check the client (the profile is one line) and confirm their health."

    .line 145
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u0440\u0435\u0433\u043b\u0435\u0434\u0430\u0439 \u043f\u043b\u0430\u043d\u0430 \u2014 \u0432\u0440\u0435\u043c\u0435, \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u0443\u043b\u0441; \u043f\u0440\u0438 \u043d\u0443\u0436\u0434\u0430 \u0441\u043c\u0435\u043d\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442\u0442\u0430 \u0438\u043b\u0438 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u0430."

    const-string v3, "Review the plan \u2014 time, feel, heart rate; change duration or intensity if needed."

    .line 147
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u201e\u0421\u0442\u0430\u0440\u0442\u201c \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 0; \u043a\u0430\u0447\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u0430\u043d\u0430\u043b \u0441 + \u043d\u0430 \u0440\u0435\u0434\u0430."

    const-string v3, "Start \u2014 the program begins at 0; raise each channel\'s strength with the row\'s +."

    .line 149
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u041f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430: \u0441\u0438\u043b\u0430 \u00b1, \u043f\u0430\u0443\u0437\u0430 \u0438 \u201e\u041f\u0440\u0438\u043a\u043b\u044e\u0447\u0438\u201c."

    const-string v3, "During the session: strength \u00b1, pause and Finish."

    .line 151
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 153
    :cond_265
    const-string v1, "ai"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44c

    .line 154
    const-string v1, "AI"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 155
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 156
    const-string v1, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v2, "AI session"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 157
    const-string v1, "AI \u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u0441 \u043d\u0430\u0443\u043a\u0430 \u0437\u0430\u0434 \u0433\u044a\u0440\u0431\u0430 \u0441\u0438 \u2014 \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0438 \u044f \u0432\u043e\u0434\u0438 \u043f\u043e \u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u0432 \u0440\u0435\u0430\u043b\u043d\u043e \u0432\u0440\u0435\u043c\u0435"

    const-string v2, "An AI coach with science behind it \u2014 it writes the session and leads it by heart rate and fatigue in real time"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 159
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u043e\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0441\u0430\u043c\u0430 \u2014 \u0432\u0441\u044f\u043a\u0430 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u0441\u043b\u0435\u0434\u0438 \u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u0440\u0435\u0448\u0430\u0432\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430, \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435; \u0441\u0438\u043b\u0430\u0442\u0430 \u0435 \u0442\u0432\u043e\u044f."

    const-string v3, "Leads the session \u2014 every second it watches heart rate and muscle fatigue and sets the frequency, pauses and rests; the strength is yours."

    .line 160
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041b\u0438\u0447\u0435\u043d \u043f\u043b\u0430\u043d \u2014 \u043e\u0442 \u0446\u0435\u043b\u0442\u0430, \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0438 \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439 \u0441\u0435 \u0441\u0442\u0440\u043e\u0438 \u043f\u043b\u0430\u043d \u0441 \u0444\u0430\u0437\u0438 \u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u0437\u0430 \u0442\u043e\u0437\u0438 \u0447\u043e\u0432\u0435\u043a."

    const-string v3, "A personal plan \u2014 goal, profile and resting heart rate build a plan with phases and blocks for this person."

    .line 162
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041c\u043d\u043e\u0433\u043e\u043f\u043b\u0430\u0441\u0442\u043e\u0432\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u2014 \u0437\u0430\u0449\u0438\u0442\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438, \u0431\u0443\u0442\u043e\u043d\u0438 \u0421\u0422\u041e\u041f \u0438 \u041d\u0410\u041c\u0410\u041b\u0418, \u043d\u0438\u043a\u043e\u0433\u0430 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u043d\u0430\u0434 \u043f\u043b\u0430\u043d\u0430."

    const-string v3, "Layered safety \u2014 protective limits, STOP and REDUCE buttons, never an increase above the plan."

    .line 164
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041e\u0431\u044f\u0441\u043d\u044f\u0432\u0430 \u0441\u0435 \u2014 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0430 \u0441\u0435 \u0432\u0438\u0436\u0434\u0430 \u043a\u0430\u043a\u0432\u043e \u043f\u0440\u0430\u0432\u0438 AI \u0438 \u0437\u0430\u0449\u043e."

    const-string v3, "Explains itself \u2014 the screen shows what the AI does and why."

    .line 166
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u041e\u0442\u0447\u0435\u0442 \u0441 \u0440\u0435\u0437\u0443\u043b\u0442\u0430\u0442 \u2014 \u0432\u0440\u0435\u043c\u0435 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u0435\u043d \u043f\u0443\u043b\u0441, \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0438 \u0434\u043e\u0437\u0430; \u0441\u043f\u043e\u0434\u0435\u043b\u044f \u0441\u0435 \u0441 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "A report with results \u2014 time in zone, max heart rate, recovery and dose; shareable with the client."

    .line 167
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string v3, "\u041c\u043e\u0436\u0435 \u0438 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u043e \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0438 \u0431\u0435\u0437 \u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u0434\u043e \u0441\u0435\u0431\u0435 \u0441\u0438, \u043f\u0440\u0438 \u043f\u043e-\u0441\u0442\u0440\u043e\u0433\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438."

    const-string v4, "Works solo too \u2014 the client can train without a trainer next to them, with stricter limits."

    .line 169
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 172
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201eAI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c. \u0422\u0440\u0438 \u0441\u0442\u044a\u043f\u043a\u0438: \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e, \u0446\u0435\u043b\u0442\u0430 \u0438 \u0432\u0438\u0434\u044a\u0442, \u043d\u0435\u0449\u043e \u0441\u043f\u0435\u0446\u0438\u0430\u043b\u043d\u043e \u0437\u0430 \u0434\u043d\u0435\u0441."

    const-string v3, "Tap AI session. Three steps: the client and health, the goal and kind, anything special today."

    .line 173
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e \u0441\u0435 \u0432\u0437\u0438\u043c\u0430\u0442 \u043e\u0442 \u043a\u0430\u0440\u0442\u043e\u043d\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u2014 \u043f\u0438\u0442\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u0437\u0430 \u0433\u043e\u0441\u0442."

    const-string v3, "The profile and health come from the client\'s card \u2014 only a guest is asked."

    .line 175
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0421\u044a\u0437\u0434\u0430\u0439 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430\u201c \u2014 \u0447\u0430\u043a \u0442\u043e\u0433\u0430\u0432\u0430 AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u043f\u043b\u0430\u043d\u0430 \u0438 \u043d\u0430\u0441\u043e\u043a\u0438\u0442\u0435; \u0434\u043e \u0442\u043e\u0433\u0430\u0432\u0430 \u043d\u0438\u0449\u043e \u043d\u0435 \u0441\u0435 \u0438\u0437\u043f\u0440\u0430\u0449\u0430."

    const-string v3, "Tap Create the session \u2014 only then does the AI write the plan and guidance; nothing is sent before."

    .line 177
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041f\u0440\u0435\u0433\u043b\u0435\u0434\u0430\u0439 \u043f\u043b\u0430\u043d\u0430 \u0438 \u043d\u0430\u0441\u043e\u043a\u0438\u0442\u0435, \u043f\u043e\u0433\u043e\u0432\u043e\u0440\u0438 \u0441 AI \u0432 \u0447\u0430\u0442\u0430 (\u201e\u043f\u043e-\u043b\u0435\u043a\u043e\u201c, \u201e\u043f\u043e\u0432\u0435\u0447\u0435 \u043a\u043e\u0440\u0435\u043c\u201c) \u0438 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0421\u0442\u0430\u0440\u0442\u201c."

    const-string v3, "Review the plan and guidance, talk to the AI in the chat (\"lighter\", \"more abs\") and tap Start."

    .line 179
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u041f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430: \u0441\u0438\u043b\u0430 \u00b1 \u043f\u043e \u0441\u043a\u0430\u043b\u0430\u0442\u0430 \u043d\u0430 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e (0\u201310), \u043f\u0430\u0443\u0437\u0430, \u201e\u041e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0435\u0440, \u2026\u201c \u043f\u043e \u0433\u043b\u0430\u0441."

    const-string v3, "During the session: strength \u00b1 on the feel scale (0\u201310), pause, \"Okay trainer, \u2026\" by voice."

    .line 181
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string v3, "\u201e\u0417\u0430\u0442\u0432\u043e\u0440\u0438\u201c \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0432\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0438 \u043e\u0442\u0432\u0430\u0440\u044f \u043e\u0442\u0447\u0435\u0442\u0430 \u0432 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u043a\u0430\u0440\u0442\u043e\u043d."

    const-string v4, "Close ends the session and opens the report in the client\'s card."

    .line 183
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    .line 186
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0424\u0438\u0437\u0438\u043e\u043b\u043e\u0433\u0438\u044f \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430\u0442\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f \u2014 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u044f \u043a\u0430\u043a \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442: \u043e\u0442 \u0435\u0434\u0438\u043d\u0438\u0447\u043d\u0438 \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0438\u044f \u0434\u043e \u0441\u043b\u044f\u0442\u0430 \u0443\u0441\u0442\u043e\u0439\u0447\u0438\u0432\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f. \u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043c\u0435\u0436\u0434\u0443 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0441\u0438\u043b\u0430 \u0438 \u0443\u043c\u043e\u0440\u0430 \u0435 \u043e\u043f\u0438\u0441\u0430\u043d\u0430 \u0432 \u043d\u0430\u0443\u0447\u043d\u0430\u0442\u0430 \u043b\u0438\u0442\u0435\u0440\u0430\u0442\u0443\u0440\u0430 (Kesar & Binder-Macleod 2006; Gregory \u0438 \u0434\u0440. 2007)."

    const-string v3, "Muscle physiology \u2014 the frequency decides how the muscle answers: from single twitches to a fused steady contraction. The relation between frequency, force and fatigue is described in the literature (Kesar & Binder-Macleod 2006; Gregory et al. 2007)."

    .line 187
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0423\u043c\u043e\u0440\u0430 \u043f\u0440\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f \u2014 \u0442\u043e\u043a\u044a\u0442 \u0437\u0430\u0434\u0435\u0439\u0441\u0442\u0432\u0430 \u0435\u0434\u043d\u0438 \u0438 \u0441\u044a\u0449\u0438 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438 \u0435\u0434\u0438\u043d\u0438\u0446\u0438, \u0435\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0438 \u0431\u0435\u0437 \u0440\u043e\u0442\u0430\u0446\u0438\u044f, \u0437\u0430\u0442\u043e\u0432\u0430 \u0443\u043c\u043e\u0440\u044f\u0432\u0430 \u043f\u043e-\u0431\u044a\u0440\u0437\u043e \u043e\u0442 \u0432\u043e\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0438\u043b\u0438\u0435 (Gregory & Bickel 2005; Bickel \u0438 \u0434\u0440. 2011)."

    const-string v3, "Fatigue in electrical stimulation \u2014 the current fires the same motor units, together and without rotation, so it tires sooner than voluntary effort (Gregory & Bickel 2005; Bickel et al. 2011)."

    .line 189
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0415\u043d\u0435\u0440\u0433\u0435\u0442\u0438\u043a\u0430 \u0438 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u2014 \u0444\u043e\u0441\u0444\u043e\u043a\u0440\u0435\u0430\u0442\u0438\u043d, \u0433\u043b\u0438\u043a\u043e\u043b\u0438\u0437\u0430 \u0438 \u043a\u0438\u0441\u043b\u043e\u0440\u043e\u0434\u0435\u043d \u0434\u044a\u043b\u0433 \u0441\u043b\u0435\u0434 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 (Haseler \u0438 \u0434\u0440. 1999; Gondin \u0438 \u0434\u0440. 2010)."

    const-string v3, "Energetics and recovery \u2014 phosphocreatine, glycolysis and the oxygen debt after the session (Haseler et al. 1999; Gondin et al. 2010)."

    .line 191
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0428\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0438 \u0434\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 \u043d\u0430 \u0432\u044a\u0437\u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435\u0442\u043e \u2014 \u043a\u0430\u043a \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u043d\u0430 \u0442\u043e\u043a\u0430 \u0441\u0442\u0438\u0433\u0430\u0442 \u0434\u043e \u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u043f\u0440\u0438 \u043f\u043e\u043d\u043e\u0441\u0438\u043c \u0442\u043e\u043a (Maffiuletti 2010)."

    const-string v3, "Pulse width and depth \u2014 how the current\'s parameters reach the deeper fibres at a tolerable current (Maffiuletti 2010)."

    .line 193
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u041f\u0440\u0430\u043a\u0442\u0438\u043a\u0430 \u0438 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u043d\u0430 WB-EMS \u2014 \u043c\u0435\u0436\u0434\u0443\u043d\u0430\u0440\u043e\u0434\u043d\u0438 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438 \u0437\u0430 \u0435\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u0430 \u0438 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0438 \u0437\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u043c\u0435\u0436\u0434\u0443 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435 (Kemmler \u0438 \u0434\u0440. 2016, 2023; Teschler \u0438 \u0434\u0440. 2016)."

    const-string v3, "WB-EMS practice and safety \u2014 international recommendations for effective and safe training and for the rest between sessions (Kemmler et al. 2016, 2023; Teschler et al. 2016)."

    .line 195
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string v3, "\u041d\u0430\u0448\u0438\u044f\u0442 \u0430\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c \u0438 \u043e\u043f\u0438\u0442 \u2014 \u0432\u044a\u0440\u0445\u0443 \u0442\u0430\u0437\u0438 \u043e\u0441\u043d\u043e\u0432\u0430 \u0435 \u0438\u0437\u0433\u0440\u0430\u0434\u0435\u043d \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d \u043f\u0440\u0435\u0446\u0438\u0437\u0435\u043d \u0430\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c, \u043e\u0431\u043e\u0433\u0430\u0442\u0435\u043d \u0441 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0441\u043a\u0430\u0442\u0430 \u043f\u0440\u0430\u043a\u0442\u0438\u043a\u0430 \u043d\u0430 \u0430\u0432\u0442\u043e\u0440\u0430 \u043d\u0430 XEMS \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0432\u0430\u043d \u0432\u044a\u0440\u0445\u0443 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438. AI \u0435 \u043f\u043e\u043c\u043e\u0449\u043d\u0438\u043a \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430 \u2014 \u043f\u0440\u0435\u0446\u0435\u043d\u043a\u0430\u0442\u0430 \u0438 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u043d\u043e\u0441\u0442\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u043d\u0435\u0433\u043e\u0432\u0438."

    const-string v4, "Our algorithm and experience \u2014 on this basis we built our own precise algorithm, enriched by the XEMS author\'s coaching practice and checked on recorded sessions. The AI is the trainer\'s assistant \u2014 the judgement and the responsibility stay with the trainer."

    .line 197
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->science:[Ljava/lang/String;

    .line 200
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v4, "Frequency and muscle force"

    .line 201
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "\u041f\u0440\u0438 \u043d\u0438\u0441\u043a\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f \u0441 \u0435\u0434\u0438\u043d\u0438\u0447\u043d\u0438 \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0438\u044f \u0438 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430 \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445; \u0441 \u043f\u043e\u0432\u0438\u0448\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u043d\u0438\u044f\u0442\u0430 \u0441\u0435 \u0441\u0443\u043c\u0438\u0440\u0430\u0442, \u043f\u043e\u0441\u043b\u0435 \u0441\u0435 \u0441\u043b\u0438\u0432\u0430\u0442 \u0432 \u0443\u0441\u0442\u043e\u0439\u0447\u0438\u0432\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u044f, \u0430 \u043f\u0440\u0438 \u0432\u0438\u0441\u043e\u043a\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0434\u043e\u0441\u0442\u0438\u0433\u0430 \u043f\u043e\u0447\u0442\u0438 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c\u0430 \u0441\u0438. \u0417\u0430\u0442\u043e\u0432\u0430 \u0437\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435\u0442\u043e, \u0434\u0440\u0435\u043d\u0438\u0440\u0430\u043d\u0435\u0442\u043e, \u0440\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435\u0442\u043e \u0438 \u0441\u0438\u043b\u043e\u0432\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u0438\u0437\u043f\u043e\u043b\u0437\u0432\u0430\u0442 \u0440\u0430\u0437\u043b\u0438\u0447\u043d\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u043d\u0438 \u043e\u0431\u043b\u0430\u0441\u0442\u0438."

    const-string v4, "At low frequencies the muscle answers with single twitches and relaxes between them; as the frequency rises the twitches sum, then fuse into a steady contraction, and at high frequencies the force approaches its maximum. So warm-up, drainage, cool-down and strength work use different frequency ranges."

    .line 202
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "\u0412\u0438\u0441\u043e\u043a\u0430\u0442\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0434\u0430\u0432\u0430 \u043f\u043e-\u0433\u043e\u043b\u044f\u043c\u0430 \u0441\u0438\u043b\u0430, \u043d\u043e \u0438 \u043f\u043e-\u0431\u044a\u0440\u0437\u0430 \u0443\u043c\u043e\u0440\u0430 \u2014 \u043f\u0440\u043e\u0432\u043e\u0434\u0438\u043c\u043e\u0441\u0442\u0442\u0430 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430 \u0438 \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u0438\u0442\u0435 \u0441\u0435 \u043d\u0430\u0442\u0440\u0443\u043f\u0432\u0430\u0442 \u043f\u043e-\u0431\u044a\u0440\u0437\u043e. \u0422\u0435\u0437\u0438 \u0437\u0430\u0432\u0438\u0441\u0438\u043c\u043e\u0441\u0442\u0438 \u0441\u0430 \u0438\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0438 \u0438 \u043e\u043f\u0438\u0441\u0430\u043d\u0438 \u0432 \u043b\u0438\u0442\u0435\u0440\u0430\u0442\u0443\u0440\u0430\u0442\u0430 \u0438 \u0441\u0430 \u043e\u0441\u043d\u043e\u0432\u0430\u0442\u0430 \u043d\u0430 \u0438\u0437\u0431\u043e\u0440\u0430 \u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0432\u044a\u0432 \u0432\u0441\u0435\u043a\u0438 \u043f\u043b\u0430\u043d."

    const-string v4, "A higher frequency gives more force but also faster fatigue \u2014 conduction weakens and metabolites build up sooner. These relations are studied and described in the literature and are the basis for the frequency choice in every plan."

    .line 204
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object v2, v1, v6

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u0423\u043c\u043e\u0440\u0430 \u0438 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v4, "Fatigue and recovery"

    .line 206
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "\u041f\u0440\u0438 \u0432\u043e\u043b\u0435\u0432\u043e \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435 \u0442\u044f\u043b\u043e\u0442\u043e \u0440\u0435\u0434\u0443\u0432\u0430 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u0435\u0434\u0438\u043d\u0438\u0446\u0438; \u043f\u0440\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0435\u0434\u043d\u0438 \u0438 \u0441\u044a\u0449\u0438, \u0432 \u0435\u0434\u043d\u0438 \u0438 \u0441\u044a\u0449\u0438 \u043c\u0435\u0441\u0442\u0430 \u0438 \u0435\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e. \u0417\u0430\u0442\u043e\u0432\u0430 \u0441\u044a\u0449\u0430\u0442\u0430 \u0441\u0438\u043b\u0430 \u0443\u043c\u043e\u0440\u044f\u0432\u0430 \u043f\u043e\u0432\u0435\u0447\u0435 \u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0438\u043c\u0430 \u043d\u0443\u0436\u0434\u0430 \u043e\u0442 \u043f\u0430\u0443\u0437\u0438, \u0432 \u043a\u043e\u0438\u0442\u043e \u0441\u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430 \u0437\u0430\u043f\u0430\u0441\u044a\u0442 \u043c\u0443 \u043e\u0442 \u0444\u043e\u0441\u0444\u043e\u043a\u0440\u0435\u0430\u0442\u0438\u043d \u2014 \u043f\u0440\u043e\u0446\u0435\u0441 \u0441 \u0438\u0437\u0432\u0435\u0441\u0442\u043d\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435, \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e \u043f\u0440\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u0430\u043d\u0438 \u0445\u043e\u0440\u0430."

    const-string v4, "In voluntary movement the body rotates its motor units; in electrical stimulation the same ones work, in the same places, at the same time. So the same force tires more and the muscle needs pauses in which its phosphocreatine store recovers \u2014 a process with a known recovery time, shorter in trained people."

    .line 207
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "\u041f\u043b\u0430\u043d\u044a\u0442 \u0432\u0437\u0435\u043c\u0430 \u043f\u0440\u0435\u0434\u0432\u0438\u0434 \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430\u0442\u0430 \u043d\u0430 \u0447\u043e\u0432\u0435\u043a\u0430 \u0438 \u0438\u0437\u0431\u0438\u0440\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435 \u0442\u0430\u043a\u0430, \u0447\u0435 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u0434\u0430 \u043e\u0441\u0442\u0430\u0432\u0430 \u0432 \u043f\u043e\u043d\u043e\u0441\u0438\u043c\u0438 \u0437\u0430 \u043d\u0435\u0433\u043e \u0433\u0440\u0430\u043d\u0438\u0446\u0438."

    const-string v4, "The plan takes the person\'s fitness into account and chooses the rests so that fatigue stays within limits he or she can bear."

    .line 209
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u0428\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v4, "Pulse width"

    .line 211
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "\u041f\u043e-\u0448\u0438\u0440\u043e\u043a\u0438\u044f\u0442 \u0438\u043c\u043f\u0443\u043b\u0441 \u0434\u043e\u0441\u0442\u0438\u0433\u0430 \u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a\u0438 \u0432\u043b\u0430\u043a\u043d\u0430 \u043f\u0440\u0438 \u043f\u043e-\u043d\u0438\u0441\u044a\u043a \u0442\u043e\u043a, \u043d\u043e \u0432\u0438\u0441\u043e\u043a\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0441 \u0448\u0438\u0440\u043e\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u0435 \u043d\u0435\u043f\u0440\u0438\u044f\u0442\u043d\u0430 \u0438 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0431\u043e\u043b\u0438. \u0417\u0430\u0442\u043e\u0432\u0430 \u0448\u0438\u0440\u043e\u0447\u0438\u043d\u0430\u0442\u0430 \u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0441\u0435 \u043f\u043e\u0434\u0431\u0438\u0440\u0430\u0442 \u0437\u0430\u0435\u0434\u043d\u043e \u0438 \u0441\u0435 \u043f\u0430\u0437\u044f\u0442 \u0432 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438."

    const-string v4, "A wider pulse reaches deeper fibres at a lower current, but a high rate with a wide pulse is unpleasant and can hurt. So width and frequency are chosen together and kept within safe limits."

    .line 212
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u0415\u043d\u0435\u0440\u0433\u0438\u044f \u0438 \u043a\u0430\u043b\u043e\u0440\u0438\u0438"

    const-string v4, "Energy and calories"

    .line 214
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0445\u0430\u0440\u0447\u0438 \u0435\u043d\u0435\u0440\u0433\u0438\u044f \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0438 \u201e\u0432\u0440\u044a\u0449\u0430 \u0434\u044a\u043b\u0433\u0430\u201c \u0441\u043b\u0435\u0434 \u043d\u0435\u044f: \u0431\u044a\u0440\u0437\u0430 \u0447\u0430\u0441\u0442 (\u0444\u043e\u0441\u0444\u043e\u043a\u0440\u0435\u0430\u0442\u0438\u043d \u0438 \u043a\u0438\u0441\u043b\u043e\u0440\u043e\u0434\u0435\u043d \u0434\u0435\u0444\u0438\u0446\u0438\u0442 \u2014 \u043c\u0438\u043d\u0443\u0442\u0438) \u0438 \u043f\u043e-\u0431\u0430\u0432\u043d\u0430 \u0433\u043b\u0438\u043a\u043e\u043b\u0438\u0442\u0438\u0447\u043d\u0430 \u0447\u0430\u0441\u0442 (\u043b\u0430\u043a\u0442\u0430\u0442, \u0433\u043b\u0438\u043a\u043e\u0433\u0435\u043d \u2014 \u0434\u0435\u0441\u0435\u0442\u043a\u0438 \u043c\u0438\u043d\u0443\u0442\u0438). \u0421\u0438\u043b\u043d\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u044f \u0442\u0440\u0430\u0435\u043d \u0435\u0444\u0435\u043a\u0442; \u0441\u043b\u0430\u0431\u0430\u0442\u0430 \u0438 \u043a\u0440\u0430\u0442\u043a\u0430\u0442\u0430 \u2014 \u043f\u043e\u0447\u0442\u0438 \u043d\u0435."

    const-string v4, "The muscle spends energy during stimulation and pays the debt back after it: a fast part (phosphocreatine and the oxygen deficit \u2014 minutes) and a slower glycolytic part (lactate, glycogen \u2014 tens of minutes). Hard work leaves a lasting effect; light and short work hardly any."

    .line 215
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "\u0417\u0430\u0442\u043e\u0432\u0430 \u0438\u0437\u0447\u0438\u0441\u043b\u044f\u0432\u0430\u043c\u0435 \u0438 \u0435\u043d\u0435\u0440\u0433\u0438\u044f\u0442\u0430 \u0441\u043b\u0435\u0434 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u043d\u0435 \u0441\u0430\u043c\u043e \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u043d\u0435\u044f."

    const-string v4, "So we count the energy after the session too, not only during it."

    .line 217
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object v2, v1, v9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u041c\u0435\u0436\u0434\u0443 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435"

    const-string v4, "Between sessions"

    .line 219
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "\u0421\u043b\u0435\u0434 \u0442\u0435\u0436\u043a\u0430 WB-EMS \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043a\u0440\u0435\u0430\u0442\u0438\u043d\u043a\u0438\u043d\u0430\u0437\u0430\u0442\u0430 \u0432 \u043a\u0440\u044a\u0432\u0442\u0430 \u0434\u043e\u0441\u0442\u0438\u0433\u0430 \u0432\u0440\u044a\u0445 \u043d\u0430 2\u20134 \u0434\u0435\u043d \u0438 \u043f\u0440\u0438 \u043d\u0435\u043f\u0440\u0438\u0432\u0438\u043a\u043d\u0430\u043b\u0438 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0435 \u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0430. \u041c\u0435\u0436\u0434\u0443\u043d\u0430\u0440\u043e\u0434\u043d\u0438\u0442\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438 \u0441\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u043c\u0435\u0436\u0434\u0443 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435, \u044f\u0441\u043d\u043e \u043f\u043e-\u043b\u0435\u043a\u0438 \u043f\u044a\u0440\u0432\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438, \u0443\u043c\u0435\u0440\u0435\u043d\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442, \u0441\u0438\u043b\u0430 \u043f\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 \u0438 \u0434\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e \u0432\u043e\u0434\u0430. \u041f\u043b\u0430\u043d\u044a\u0442 \u0433\u0438 \u0441\u043f\u0430\u0437\u0432\u0430 \u0438 \u043e\u0442\u0447\u0438\u0442\u0430 \u0438 \u0438\u0437\u043c\u0435\u0440\u0435\u043d\u043e\u0442\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v4, "After a hard WB-EMS session blood creatine kinase peaks on day 2\u20134 and can be very high in the unaccustomed. The international recommendations are rest between sessions, clearly lighter first sessions, a moderate duration, strength by feel and plenty of fluid. The plan follows them and also uses the client\'s measured recovery."

    .line 220
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v5

    const/4 v2, 0x5

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u041f\u0443\u043b\u0441"

    const-string v5, "Heart rate"

    .line 222
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u043e\u0446\u0435\u043d\u044f\u0432\u0430 \u043f\u043e \u043f\u0443\u043b\u0441\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u0440\u0435\u0437\u0435\u0440\u0432\u043d\u0438\u044f \u043f\u0443\u043b\u0441 \u043d\u0430 \u0447\u043e\u0432\u0435\u043a\u0430. \u041f\u0443\u043b\u0441\u044a\u0442 \u0432 \u043f\u043e\u043a\u043e\u0439 \u0441\u0435 \u0438\u0437\u043c\u0435\u0440\u0432\u0430 \u0434\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e \u0434\u044a\u043b\u0433\u043e \u0437\u0430 \u043d\u0430\u0434\u0435\u0436\u0434\u043d\u043e\u0441\u0442. \u0418\u0437\u043e\u043c\u0435\u0442\u0440\u0438\u0447\u043d\u0438\u0442\u0435 \u043a\u043e\u043d\u0442\u0440\u0430\u043a\u0446\u0438\u0438 \u0432\u0434\u0438\u0433\u0430\u0442 \u043f\u0443\u043b\u0441\u0430 \u0438 \u043f\u0440\u0435\u0437 \u043f\u0440\u0435\u0441\u043e\u0440\u043d\u0438\u044f \u0440\u0435\u0444\u043b\u0435\u043a\u0441, \u0437\u0430\u0442\u043e\u0432\u0430 \u043f\u0440\u0438 \u0432\u0438\u0441\u043e\u043a\u0430 \u0441\u0438\u043b\u0430 \u0442\u043e\u0439 \u043b\u0435\u043a\u043e \u0437\u0430\u0432\u0438\u0448\u0430\u0432\u0430 \u2014 \u0442\u043e\u0432\u0430 \u0435 \u0438\u0437\u0432\u0435\u0441\u0442\u043d\u043e \u0438 \u0441\u0435 \u043e\u0442\u0447\u0438\u0442\u0430."

    const-string v5, "Load is judged by the pulse against the person\'s heart-rate reserve. The resting pulse is measured long enough to be reliable. Isometric contractions raise the pulse through the pressor reflex too, so at high strength it reads a little high \u2014 this is known and accounted for."

    .line 223
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u041a\u0430\u043a \u0440\u0430\u0431\u043e\u0442\u044f\u0442 AI \u0438 \u0430\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c\u044a\u0442"

    const-string v5, "How the AI and the algorithm work together"

    .line 225
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "\u041f\u043b\u0430\u043d\u044a\u0442, \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442, \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u0438 \u0441\u0442\u044a\u043f\u043a\u0438\u0442\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u0441\u043c\u044f\u0442\u0430\u0442 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u043e\u0442 \u043d\u0430\u0448\u0438\u044f \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d \u0430\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c. \u0415\u0437\u0438\u043a\u043e\u0432\u0438\u044f\u0442 \u043c\u043e\u0434\u0435\u043b \u0447\u0435\u0442\u0435 \u043a\u0430\u043a\u0432\u043e \u043a\u0430\u0437\u0432\u0430\u0448 \u0438\u043b\u0438 \u043f\u0438\u0448\u0435\u0448 (\u0437\u0434\u0440\u0430\u0432\u0435, \u043e\u043f\u043b\u0430\u043a\u0432\u0430\u043d\u0438\u044f, \u043f\u0440\u0435\u0434\u043f\u043e\u0447\u0438\u0442\u0430\u043d\u0438\u044f), \u043e\u0431\u044f\u0441\u043d\u044f\u0432\u0430 \u0438 \u0438\u0437\u0431\u0438\u0440\u0430 \u0438\u0437\u043c\u0435\u0436\u0434\u0443 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0438 \u0432\u0430\u0440\u0438\u0430\u043d\u0442\u0438 \u2014 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u044a\u0442 \u043c\u0443 \u0441\u0435 \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0432\u0430 \u0438 \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0435 \u0438\u0437\u043b\u0438\u0437\u0430 \u043e\u0442 \u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0442\u043e."

    const-string v5, "The plan, the safety limits, the fatigue and the strength steps are computed on the tablet by our own algorithm. The language model reads what you say or write (health, complaints, preferences), explains and chooses among safe options \u2014 its answer is checked and never leaves what is allowed."

    .line 226
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "\u041f\u0430\u0443\u0437\u0430 \u0438 \u0441\u0442\u043e\u043f \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0432\u0435\u0434\u043d\u0430\u0433\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430, \u0431\u0435\u0437 \u0432\u0440\u044a\u0437\u043a\u0430. \u041a\u044a\u0434\u0435\u0442\u043e \u043d\u044f\u043c\u0430 \u043f\u0443\u0431\u043b\u0438\u043a\u0443\u0432\u0430\u043d\u0438 \u0434\u0430\u043d\u043d\u0438, \u0438\u0437\u043f\u043e\u043b\u0437\u0432\u0430\u043c\u0435 \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0438 \u043e\u0446\u0435\u043d\u043a\u0438, \u043f\u0440\u043e\u0432\u0435\u0440\u044f\u0432\u0430\u043d\u0438 \u0432\u044a\u0440\u0445\u0443 \u0437\u0430\u043f\u0438\u0441\u0430\u043d\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438."

    const-string v5, "Pause and stop work at once on the tablet, with no connection. Where there is no published data we use our own estimates, checked on recorded sessions."

    .line 228
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u041b\u0438\u0442\u0435\u0440\u0430\u0442\u0443\u0440\u0430"

    const-string v5, "References"

    .line 230
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "Kemmler W. \u0438 \u0434\u0440. (2016, \u043e\u0431\u043d\u043e\u0432\u0435\u043d\u0438 2023) \u2014 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438 \u0437\u0430 \u0435\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u0430 \u0438 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0430 WB-EMS. Maffiuletti N.A. (2010) \u2014 \u0444\u0438\u0437\u0438\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u0438 \u0438 \u043c\u0435\u0442\u043e\u0434\u0438\u0447\u043d\u0438 \u0441\u044a\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u0437\u0430 NMES. Teschler M., Kemmler W. \u0438 \u0434\u0440. (2016) \u2014 \u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u0430 \u043a\u0440\u0435\u0430\u0442\u0438\u043d\u043a\u0438\u043d\u0430\u0437\u0430 \u0441\u043b\u0435\u0434 WB-EMS."

    const-string v5, "Kemmler W. et al. (2016, updated 2023) \u2014 recommendations for effective and safe WB-EMS. Maffiuletti N.A. (2010) \u2014 physiological and methodological considerations for NMES. Teschler M., Kemmler W. et al. (2016) \u2014 very high creatine kinase after WB-EMS."

    .line 231
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "Kesar & Binder-Macleod (2006) \u0438 Gregory \u0438 \u0434\u0440. (2007) \u2014 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430, \u0432\u044a\u0440\u0442\u044f\u0449 \u043c\u043e\u043c\u0435\u043d\u0442 \u0438 \u0443\u043c\u043e\u0440\u0430. Gregory & Bickel (2005); Bickel, Gregory, Dean (2011) \u2014 \u043d\u0430\u0431\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0434\u0432\u0438\u0433\u0430\u0442\u0435\u043b\u043d\u0438 \u0435\u0434\u0438\u043d\u0438\u0446\u0438 \u043f\u0440\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f. Haseler, Hogan, Richardson (1999) \u2014 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0444\u043e\u0441\u0444\u043e\u043a\u0440\u0435\u0430\u0442\u0438\u043d\u0430. Gondin \u0438 \u0434\u0440. (2010) \u2014 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430 \u0438 \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430 \u0446\u0435\u043d\u0430."

    const-string v5, "Kesar & Binder-Macleod (2006) and Gregory et al. (2007) \u2014 frequency, pulse width, torque and fatigue. Gregory & Bickel (2005); Bickel, Gregory, Dean (2011) \u2014 motor-unit recruitment in electrical stimulation. Haseler, Hogan, Richardson (1999) \u2014 phosphocreatine recovery. Gondin et al. (2010) \u2014 frequency, width and metabolic cost."

    .line 233
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->more:[[Ljava/lang/String;

    goto/16 :goto_9c

    .line 236
    :cond_44c
    const-string v1, "vr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e1

    .line 237
    const-string v1, "VR"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 238
    const v1, -0xa39440

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 239
    const-string v1, "VR \u0445\u0430\u043f\u0442\u0438\u043a\u0430"

    const-string v2, "VR haptics"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 240
    const-string v1, "\u0423\u0434\u0430\u0440\u0438\u0442\u0435 \u0432 \u0438\u0433\u0440\u0430\u0442\u0430 \u043d\u0430 Quest 3 \u0441\u0442\u0430\u0432\u0430\u0442 \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0432 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    const-string v2, "Hits in a Quest 3 game become impulses in the suit"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 241
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430-\u0438\u0433\u0440\u0430 \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0431\u043e\u043a\u0441\u0438\u0440\u0430, \u0441\u0435\u0447\u0435 \u0438\u043b\u0438 \u0441\u0442\u0440\u0435\u043b\u044f \u0432\u044a\u0432 VR \u0438 \u0443\u0441\u0435\u0449\u0430 \u0432\u0441\u0435\u043a\u0438 \u0443\u0434\u0430\u0440 \u0441 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435."

    const-string v3, "A training game \u2014 the client boxes, slices or shoots in VR and feels every hit in the muscles."

    .line 242
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0411\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0435 \u043c\u0438\u043d\u0430\u0432\u0430 \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430 \u0438 \u0430\u0431\u0441\u043e\u043b\u044e\u0442\u043d\u0438\u0442\u0435 \u0433\u0440\u0430\u043d\u0438\u0446\u0438 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v3, "Safe \u2014 the strength never goes above the trainer\'s ceiling and the suit\'s absolute limits."

    .line 244
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0421\u0430\u043c\u043e \u0438\u0441\u0442\u0438\u043d\u0441\u043a\u0438\u0442\u0435 \u0443\u0434\u0430\u0440\u0438 \u2014 \u0449\u0440\u0430\u043a\u0432\u0430\u043d\u0438\u044f \u0432 \u043c\u0435\u043d\u044e\u0442\u0430 \u0438 \u0444\u043e\u043d\u043e\u0432\u043e \u0431\u0440\u044a\u043c\u0447\u0435\u043d\u0435 \u0441\u0435 \u043e\u0442\u0440\u044f\u0437\u0432\u0430\u0442; \u043a\u043e\u043b\u043a\u043e \u0441\u0442\u0440\u043e\u0433\u043e \u0440\u0435\u0448\u0430\u0432\u0430\u0448 \u0442\u0438."

    const-string v3, "Only the real hits \u2014 menu clicks and background rumble are dropped; you decide how strictly."

    .line 246
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u0443\u043c\u043e\u0440\u0430 \u2014 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0438 \u0433\u0440\u0443\u043f\u0438 \u043f\u043e\u0447\u0438\u0432\u0430\u0442, \u0434\u043e\u043a\u0430\u0442\u043e \u0438\u0433\u0440\u0430\u0442\u0430 \u0432\u043e\u0434\u0438 \u0441\u0438\u043b\u0430\u0442\u0430."

    const-string v3, "Less fatigue \u2014 the chosen muscle groups rest while the game drives the strength."

    .line 248
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 251
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u0435\u0434\u043d\u044a\u0436: \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u0438 \u0438\u0433\u0440\u0430\u0442\u0430 \u0441 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e XEMS VR (Termux) \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430."

    const-string v3, "Once: prepare the game with the XEMS VR app (Termux) on the tablet."

    .line 252
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041e\u0442\u0432\u043e\u0440\u0438 \u201e\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c, \u0434\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0437\u0430\u0434\u0430\u0439 \u0441\u0438\u043b\u0430\u0442\u0430 \u2014 \u0442\u044f \u0435 \u0442\u0430\u0432\u0430\u043d\u044a\u0442."

    const-string v3, "Open Training, add the client and set the strength \u2014 it is the ceiling."

    .line 254
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u0443\u0441\u043d\u0438 \u0438\u0433\u0440\u0430\u0442\u0430 \u0432 \u0448\u043b\u0435\u043c\u0430 \u2014 \u043f\u043b\u043e\u0447\u043a\u0430\u0442\u0430 \u201eVR\u201c \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u201e\u25cf \u0438\u0433\u0440\u0430\u201c."

    const-string v3, "Start the game on the headset \u2014 the VR tile shows \"\u25cf game\"."

    .line 256
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041f\u0443\u0441\u043d\u0438 \u0440\u0435\u0434\u0430 \u2014 \u0443\u0434\u0430\u0440\u0438\u0442\u0435 \u0432 \u0438\u0433\u0440\u0430\u0442\u0430 \u0434\u0432\u0438\u0436\u0430\u0442 \u0441\u0438\u043b\u0430\u0442\u0430."

    const-string v3, "Start the row \u2014 hits in the game move the strength."

    .line 257
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "\u201e\u041a\u043e\u0438 \u0443\u0434\u0430\u0440\u0438 \u043c\u0438\u043d\u0430\u0432\u0430\u0442\u201c: \u201e\u0421\u0430\u043c\u043e \u0441\u0438\u043b\u043d\u0438\u201c \u043f\u0440\u0438 \u043c\u043d\u043e\u0433\u043e \u0448\u0443\u043c, \u201e\u0412\u0441\u0438\u0447\u043a\u0438\u201c \u043f\u0440\u0438 \u0442\u0438\u0445\u0438 \u0438\u0433\u0440\u0438."

    const-string v3, "Which hits pass: Strong only for noisy games, All for quiet ones."

    .line 258
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string v3, "\u201e\u041d\u0430\u0439-\u0441\u043b\u0430\u0431 \u0443\u0434\u0430\u0440\u201c \u0432\u0434\u0438\u0433\u0430 \u0441\u043b\u0430\u0431\u0438\u0442\u0435 \u0443\u0434\u0430\u0440\u0438; \u201e\u041d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435\u201c \u0433\u0438 \u043e\u043c\u0435\u043a\u043e\u0442\u044f\u0432\u0430."

    const-string v4, "Weakest hit lifts the faint hits; Rise softens them."

    .line 260
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 264
    :cond_4e1
    const-string v1, "\u231a"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 265
    const v1, -0xbd5a0b

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 266
    const-string v1, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "Band"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 267
    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0432 \u0440\u044a\u043a\u0430\u0442\u0430 \u0442\u0438"

    const-string v2, "The training on your wrist"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 268
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u0421\u0432\u043e\u0431\u043e\u0434\u0430 \u043e\u0442 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u2014 \u0441\u0442\u0430\u0440\u0442, \u043f\u0430\u0443\u0437\u0430 \u0438 \u0441\u0438\u043b\u0430 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u0441\u0438 \u0434\u043e \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "Free from the tablet \u2014 start, pause and strength from the band while you are next to the client."

    .line 269
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u043f\u0443\u043b\u0441, \u0442\u0430\u0439\u043c\u0435\u0440, \u043c\u0443\u0437\u0438\u043a\u0430, AI \u0438 \u043e\u0431\u043e\u0431\u0449\u0435\u043d\u0438\u0435 \u0441\u043b\u0435\u0434 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043d\u0430 \u043a\u0438\u0442\u043a\u0430\u0442\u0430."

    const-string v3, "The XEMS app on the band \u2014 heart rate, timer, music, AI and the session summary on the wrist."

    .line 271
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0420\u0430\u0431\u043e\u0442\u0438 \u0438 \u0431\u0435\u0437 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435 \u2014 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0438\u044f\u0442 \u0435\u043a\u0440\u0430\u043d \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430 \u0434\u0438\u0441\u0442\u0430\u043d\u0446\u0438\u043e\u043d\u043d\u043e \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v3, "Works without installing too \u2014 the band\'s music screen becomes the training remote."

    .line 273
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "Xiaomi Smart Band 8, 9 \u0438 10."

    const-string v3, "Xiaomi Smart Band 8, 9 and 10."

    .line 275
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 277
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430: \u0438\u0437\u0431\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0438 \u0432\u044a\u0432\u0435\u0434\u0438 \u043a\u043b\u044e\u0447\u0430 \u045d \u0432\u0435\u0434\u043d\u044a\u0436."

    const-string v3, "Settings \u2192 Band: pick the band and enter its key once."

    .line 278
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041e\u0442 \u0441\u044a\u0449\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430."

    const-string v3, "Install the XEMS app on the band from the same screen."

    .line 279
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u0441\u0430\u043c\u043e."

    const-string v3, "At the start of a session the band app opens by itself."

    .line 280
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430: \u0441\u0442\u0430\u0440\u0442 \u0438 \u043f\u0430\u0443\u0437\u0430, \u0441\u0438\u043b\u0430 + \u0438 \u2212."

    const-string v3, "On the band: start and pause, strength + and \u2212."

    .line 281
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c
.end method

.method private static moreBlock(Landroid/app/Activity;[[Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 384
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    move v0, v1

    .line 385
    :goto_9
    array-length v2, p1

    if-ge v0, v2, :cond_79

    .line 386
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 387
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 388
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v6, v2, v2, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 389
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v2, v4, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    aget-object v2, p1, v0

    aget-object v2, v2, v1

    const/high16 v4, 0x41800000    # 16.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v2, v4, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v2, v3

    .line 391
    :goto_43
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v2, v4, :cond_69

    .line 392
    aget-object v4, p1, v0

    aget-object v4, v4, v2

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v9, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 393
    const/4 v4, 0x0

    const v8, 0x3f99999a    # 1.2f

    invoke-virtual {v7, v4, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 394
    if-ne v2, v3, :cond_66

    const/4 v4, 0x6

    :goto_5c
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 394
    :cond_66
    const/16 v4, 0x8

    goto :goto_5c

    .line 396
    :cond_69
    if-nez v0, :cond_76

    move v2, v1

    :goto_6c
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 396
    :cond_76
    const/16 v2, 0xa

    goto :goto_6c

    .line 398
    :cond_79
    return-object v5
.end method

.method private static open(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 29
    const-string v0, "vr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static rise(Landroid/view/View;I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x23

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 490
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 289
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 297
    :cond_4
    :goto_4
    return-void

    .line 293
    :cond_5
    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->build(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_4

    .line 294
    :catch_9
    move-exception v0

    .line 295
    const-string v1, "XemsModuleInfo.show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static stagger(Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 472
    move v2, v3

    move v4, v3

    .line 473
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3e

    .line 474
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 475
    instance-of v0, v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_37

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_37

    .line 476
    check-cast v1, Landroid/widget/LinearLayout;

    move v0, v3

    .line 477
    :goto_1e
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_31

    .line 478
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v5, v4, 0x1

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->rise(Landroid/view/View;I)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_1e

    :cond_31
    move v1, v4

    .line 473
    :goto_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_3

    .line 481
    :cond_37
    add-int/lit8 v0, v4, 0x1

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->rise(Landroid/view/View;I)V

    move v1, v0

    goto :goto_32

    .line 484
    :cond_3e
    return-void
.end method

.method private static stepRow(Landroid/app/Activity;ILjava/lang/String;I)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 451
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 452
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 453
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 454
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 455
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 456
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 457
    invoke-virtual {v2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 458
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 460
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 462
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 463
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 464
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 465
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 466
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    return-object v0
.end method

.method public static subscribe(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 497
    if-nez p0, :cond_3

    .line 522
    :goto_2
    return-void

    .line 501
    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    move-result-object v0

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0410\u0431\u043e\u043d\u0430\u043c\u0435\u043d\u0442 \u00b7 "

    const-string v3, "Subscription \u00b7 "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    const/16 v2, 0x208

    invoke-static {p0, v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 503
    const-string v1, "\u0426\u0435\u043d\u0438\u0442\u0435 \u0438 \u043f\u043b\u0430\u0449\u0430\u043d\u0435\u0442\u043e \u0438\u0434\u0432\u0430\u0442 \u0441\u044a\u0432\u0441\u0435\u043c \u0441\u043a\u043e\u0440\u043e \u2014 \u0442\u0443\u043a, \u0441 \u0435\u0434\u043d\u043e \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435."

    const-string v2, "Prices and payment are coming very soon \u2014 right here, in one tap."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 505
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 506
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    const-string v1, "\u0418\u043c\u0430\u0448 \u043a\u043b\u044e\u0447 \u0437\u0430 \u0434\u043e\u0441\u0442\u044a\u043f? \u0412\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437 \u0438 \u043c\u043e\u0434\u0443\u043b\u044a\u0442 \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430 \u0432\u0435\u0434\u043d\u0430\u0433\u0430."

    const-string v2, "Have an access key? Enter it in Settings \u2192 Access & license and the module unlocks at once."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 509
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 510
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430: "

    const-string v3, "Tablet ID: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceIdShown()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 512
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v3, 0xe

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    const-string v1, "\u0420\u0430\u0437\u0431\u0440\u0430\u0445"

    const-string v2, "Got it"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 514
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v3, v4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 517
    const v1, 0x3f666666    # 0.9f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 518
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stagger(Landroid/widget/LinearLayout;)V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d2} :catch_d4

    goto/16 :goto_2

    .line 519
    :catch_d4
    move-exception v0

    .line 520
    const-string v1, "XemsModuleInfo.subscribe"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 526
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    .line 528
    :goto_4
    return-object p0

    .line 527
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private static valueRow(Landroid/app/Activity;Ljava/lang/String;I)Landroid/view/View;
    .registers 12

    .prologue
    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 422
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 423
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 424
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 425
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 426
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    const-string v1, "\u2713"

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v1, v2, p2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 428
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 429
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 430
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 431
    const/16 v3, 0x2e

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 432
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 434
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    const-string v1, ""

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 436
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 437
    const-string v2, " \u2014 "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 438
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 439
    if-lez v2, :cond_87

    .line 440
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 442
    :cond_87
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 444
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 445
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    return-object v0
.end method
