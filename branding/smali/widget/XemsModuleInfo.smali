.class public final Lcom/isaigu/gymapp/widget/XemsModuleInfo;
.super Ljava/lang/Object;
.source "XemsModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;,
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;,
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;,
        Lcom/isaigu/gymapp/widget/XemsModuleInfo$ChipClick;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 12

    .prologue
    .line 210
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    move-result-object v2

    .line 211
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v3

    .line 212
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v4, 0x280

    invoke-static {p0, v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v4

    .line 215
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 216
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 217
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_f6

    const/high16 v0, 0x41a00000    # 20.0f

    :goto_27
    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    const/4 v7, 0x1

    invoke-static {p0, v1, v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 218
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 219
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 220
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 221
    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    const/16 v7, 0x2e

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 222
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget v7, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    const/16 v8, 0x88

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 225
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 227
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    const/high16 v1, 0x41880000    # 17.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {p0, v0, v1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 228
    const/4 v1, 0x0

    const v7, 0x3f933333    # 1.15f

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 229
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    if-eqz v3, :cond_fa

    const-string v0, "\u2713 \u0412\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u0432 \u0430\u0431\u043e\u043d\u0430\u043c\u0435\u043d\u0442\u0430 \u0442\u0438"

    const-string v1, "\u2713 Included in your subscription"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 231
    :goto_8d
    const/high16 v7, 0x41500000    # 13.0f

    if-eqz v3, :cond_104

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_93
    const/4 v8, 0x1

    .line 230
    invoke-static {p0, v1, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 232
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 234
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 235
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
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

    .line 240
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 241
    const/4 v0, 0x0

    :goto_da
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_10a

    .line 242
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    invoke-static {p0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->valueRow(Landroid/app/Activity;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    if-nez v0, :cond_107

    const/4 v1, 0x0

    :goto_ec
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 217
    :cond_f6
    const/high16 v0, 0x41e00000    # 28.0f

    goto/16 :goto_27

    .line 231
    :cond_fa
    const-string v0, "\ud83d\udd12 \u041d\u0435 \u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u0432 \u0430\u0431\u043e\u043d\u0430\u043c\u0435\u043d\u0442\u0430 \u0442\u0438"

    const-string v1, "\ud83d\udd12 Not in your subscription"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8d

    :cond_104
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_93

    .line 242
    :cond_107
    const/16 v1, 0x8

    goto :goto_ec

    .line 244
    :cond_10a
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    if-eqz v3, :cond_1bb

    .line 248
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

    .line 249
    const/4 v0, 0x0

    :goto_129
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14c

    .line 250
    iget-object v3, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    add-int/lit8 v1, v0, 0x1

    iget-object v5, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    invoke-static {p0, v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stepRow(Landroid/app/Activity;ILjava/lang/String;I)Landroid/view/View;

    move-result-object v5

    if-nez v0, :cond_149

    const/4 v1, 0x0

    :goto_13f
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_129

    .line 250
    :cond_149
    const/16 v1, 0xa

    goto :goto_13f

    .line 252
    :cond_14c
    const-string v0, "\u0420\u0430\u0437\u0431\u0440\u0430\u0445"

    const-string v1, "Got it"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1b9

    const/4 v0, 0x2

    :goto_157
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 253
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v3, 0x0

    invoke-direct {v1, v4, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {v3, v5, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    if-eqz p2, :cond_1a8

    .line 256
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

    .line 257
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    invoke-direct {v1, v4, p2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const v2, 0x3fb33333    # 1.4f

    const/16 v3, 0xa

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :cond_1a8
    :goto_1a8
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 270
    const v0, 0x3f666666    # 0.9f

    invoke-static {p0, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 271
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stagger(Landroid/widget/LinearLayout;)V

    .line 272
    return-void

    .line 252
    :cond_1b9
    const/4 v0, 0x0

    goto :goto_157

    .line 261
    :cond_1bb
    const-string v0, "\u041d\u0435 \u0441\u0435\u0433\u0430"

    const-string v1, "Not now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const-string v0, "\u0410\u0431\u043e\u043d\u0438\u0440\u0430\u0439 \u0441\u0435"

    const-string v1, "Subscribe"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const v2, 0x3fb33333    # 1.4f

    const/16 v3, 0xa

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a8
.end method

.method static entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;-><init>()V

    .line 37
    const-string v1, "timer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 38
    const-string v1, "\u23f1"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 39
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 40
    const-string v1, "\u0422\u0430\u0439\u043c\u0435\u0440"

    const-string v2, "Timer"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 41
    const-string v1, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u0438 \u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438, \u043a\u043e\u0438\u0442\u043e \u0432\u044a\u0440\u0432\u044f\u0442 \u0441\u0430\u043c\u0438"

    const-string v2, "Intervals and block programs that run by themselves"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 42
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0441 \u044f\u0441\u043d\u0430 \u0441\u0442\u0440\u0443\u043a\u0442\u0443\u0440\u0430 \u2014 \u0440\u0430\u0431\u043e\u0442\u0430 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0441\u0430\u043c\u0438, \u0430 \u0442\u0438 \u0441\u043b\u0435\u0434\u0438\u0448 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0442\u0435\u0445\u043d\u0438\u043a\u0430\u0442\u0430."

    const-string v3, "A clear structure \u2014 work and rest switch by themselves while you watch the client and the technique."

    .line 43
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0411\u043b\u043e\u043a\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430, \u043e\u0441\u043d\u043e\u0432\u043d\u0430 \u0447\u0430\u0441\u0442 \u0438 \u0440\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u0441 \u0440\u0430\u0437\u043b\u0438\u0447\u043d\u0430 \u0441\u0438\u043b\u0430, \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430 \u0432 \u0435\u0434\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v3, "Block programs \u2014 warm-up, main part and cool-down with their own strength, frequency and width in one session."

    .line 45
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0417\u0432\u0443\u043a\u043e\u0432 \u0441\u0438\u0433\u043d\u0430\u043b \u043f\u0440\u0438 \u0432\u0441\u044f\u043a\u0430 \u0441\u043c\u044f\u043d\u0430 \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0437\u043d\u0430\u0435 \u043a\u043e\u0433\u0430 \u0434\u0430 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0438 \u0438 \u043a\u043e\u0433\u0430 \u0434\u0430 \u043e\u0442\u043f\u0443\u0441\u043d\u0435."

    const-string v3, "A sound at every switch \u2014 the client knows when to work and when to relax."

    .line 47
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u043b\u044e\u0431\u0438\u043c\u0438\u0442\u0435 \u0441\u0445\u0435\u043c\u0438 \u0441\u0435 \u043f\u0443\u0441\u043a\u0430\u0442 \u0441 \u0435\u0434\u043d\u043e \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435, \u0435\u0434\u043d\u0430\u043a\u0432\u043e \u043e\u0442 \u0432\u0441\u0435\u043a\u0438 \u0442\u0440\u0435\u043d\u044c\u043e\u0440."

    const-string v3, "Saved programs \u2014 favourite schemes start with one tap, the same for every trainer."

    .line 49
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0412\u044a\u0440\u0432\u0438 \u0441 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u2014 \u0442\u0440\u044a\u0433\u0432\u0430 \u0441\u044a\u0441 \u0441\u0442\u0430\u0440\u0442\u0430 \u0438 \u0441\u043f\u0438\u0440\u0430 \u043f\u0440\u0438 \u043f\u0430\u0443\u0437\u0430 \u0438\u043b\u0438 \u043a\u0440\u0430\u0439."

    const-string v3, "Runs with the training \u2014 starts with it, stops on pause or at the end."

    .line 51
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 54
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043f\u043b\u043e\u0447\u043a\u0430\u0442\u0430 \u201e\u0422\u0430\u0439\u043c\u0435\u0440\u201c."

    const-string v3, "Tap the Timer tile."

    .line 55
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0417\u0430\u0434\u0430\u0439 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b (\u0440\u0430\u0431\u043e\u0442\u0430, \u043f\u043e\u0447\u0438\u0432\u043a\u0430, \u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f) \u0438\u043b\u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043e\u0442 \u201e\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u201c."

    const-string v3, "Set an interval (work, rest, repeats) or pick a block program under Programs."

    .line 56
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439\u201c \u2014 \u0442\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0435 \u0433\u043e\u0442\u043e\u0432."

    const-string v3, "Press Activate \u2014 the timer is ready."

    .line 58
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u0443\u0441\u043d\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u2014 \u0442\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0442\u0440\u044a\u0433\u0432\u0430 \u0441 \u043d\u0435\u044f."

    const-string v3, "Start the training \u2014 the timer starts with it."

    .line 59
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u201e\u0417\u0430\u043f\u0430\u0437\u0438\u201c \u043f\u0430\u0437\u0438 \u0441\u0445\u0435\u043c\u0430\u0442\u0430 \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043f\u044a\u0442, \u201e\u0417\u0432\u0443\u043a\u201c \u0441\u043c\u0435\u043d\u044f \u0441\u0438\u0433\u043d\u0430\u043b\u0430."

    const-string v3, "Save keeps the scheme for next time; Sound changes the signal."

    .line 60
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    .line 194
    :goto_9c
    return-object v0

    .line 63
    :cond_9d
    const-string v1, "music"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 64
    const-string v1, "\u266b"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 65
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 66
    const-string v1, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v2, "Music"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 67
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0442 \u0440\u0438\u0442\u044a\u043c\u0430 \u043d\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430"

    const-string v2, "The impulses follow the music"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 68
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432 \u0440\u0438\u0442\u044a\u043c \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0441\u043b\u0435\u0434\u0432\u0430 \u0431\u0438\u0439\u0442\u0430 \u0438 \u0434\u0438\u043d\u0430\u043c\u0438\u043a\u0430\u0442\u0430 \u043d\u0430 \u043f\u0435\u0441\u0435\u043d\u0442\u0430 \u0432 \u0440\u0435\u0430\u043b\u043d\u043e \u0432\u0440\u0435\u043c\u0435."

    const-string v3, "Training in rhythm \u2014 the impulse strength follows the beat and the dynamics of the song in real time."

    .line 69
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u043e\u0432\u0435\u0447\u0435 \u043c\u043e\u0442\u0438\u0432\u0430\u0446\u0438\u044f \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0443\u0441\u0435\u0449\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0441 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e \u0438 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u043c\u0438\u043d\u0430\u0432\u0430 \u043d\u0435\u0443\u0441\u0435\u0442\u043d\u043e."

    const-string v3, "More motivation \u2014 the client feels the music with the whole body and the time flies."

    .line 71
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0411\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e \u2014 \u0442\u0430\u0432\u0430\u043d\u044a\u0442 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0435 \u0441\u0435 \u043d\u0430\u0434\u0445\u0432\u044a\u0440\u043b\u044f."

    const-string v3, "Safe \u2014 each client\'s strength ceiling is never exceeded."

    .line 73
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0441\u0435 \u0441\u0430\u043c \u2014 \u0440\u0438\u0442\u044a\u043c, \u043c\u0438\u043d\u0438\u043c\u0443\u043c, \u043c\u0435\u043a\u043e\u0442\u0430 \u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0441\u043f\u043e\u0440\u0435\u0434 \u0432\u0441\u044f\u043a\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u043f\u0435\u0441\u0435\u043d\u0442\u0430."

    const-string v3, "Tunes itself \u2014 rhythm, minimum, softness and frequency follow each part of the song."

    .line 75
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0422\u043e\u0447\u043d\u043e \u043d\u0430 \u0443\u0434\u0430\u0440\u0430 \u2014 \u0437\u0430\u0431\u0430\u0432\u044f\u043d\u0435\u0442\u043e \u043f\u043e Bluetooth \u0434\u043e \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u0441\u0435 \u0438\u0437\u043c\u0435\u0440\u0432\u0430 \u0438 \u043a\u043e\u043c\u043f\u0435\u043d\u0441\u0438\u0440\u0430."

    const-string v3, "Right on the beat \u2014 the Bluetooth delay to the suit is measured and compensated."

    .line 77
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 80
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0430 \u201e\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c \u0438 \u0437\u0430\u0434\u0430\u0439 \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u043e\u0442 \u043a\u0440\u044a\u0433\u043e\u0432\u0438\u044f \u0441\u043b\u0430\u0439\u0434\u0435\u0440 \u043d\u0430 \u0440\u0435\u0434\u0430 \u043c\u0443."

    const-string v3, "Add the client on the Training screen and set the strength ceiling with the round slider on their row."

    .line 81
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u041c\u0443\u0437\u0438\u043a\u0430\u201c \u0438 \u0434\u043e\u0431\u0430\u0432\u0438 \u043f\u0435\u0441\u043d\u0438 \u0441 \u2630."

    const-string v3, "Tap Music and add songs with \u2630."

    .line 83
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u25b6 \u2014 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u0441 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430."

    const-string v3, "Press \u25b6 \u2014 the impulses start with the music."

    .line 84
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0421 \u2699 \u043f\u0440\u043e\u043c\u0435\u043d\u0438 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e (\u0420\u0438\u0442\u044a\u043c, \u041c\u0438\u043d\u0438\u043c\u0443\u043c, \u041c\u0435\u043a\u043e\u0442\u0430, \u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442) \u0438\u043b\u0438 \u043e\u0441\u0442\u0430\u0432\u0438 \u201e\u0410\u0432\u0442\u043e\u201c."

    const-string v3, "Use \u2699 to change the feel (Rhythm, Minimum, Softness, Sensitivity) or keep Auto."

    .line 85
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u2715 \u0441\u043f\u0438\u0440\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0438 \u0437\u0430\u0442\u0432\u0430\u0440\u044f \u043f\u043b\u0435\u0439\u044a\u0440\u0430."

    const-string v3, "\u2715 stops the music and closes the player."

    .line 87
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 89
    :cond_131
    const-string v1, "pulse"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 90
    const-string v1, "\u2665"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 91
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 92
    const-string v1, "\u041f\u0443\u043b\u0441"

    const-string v2, "Heart rate"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 93
    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043d\u0430 \u0436\u0438\u0432\u043e \u0438 \u0437\u0430\u0449\u0438\u0442\u0430 \u043e\u0442 \u043f\u0440\u0435\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    const-string v2, "Live heart rate and overload protection"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 94
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043f\u0440\u0435\u0434 \u043e\u0447\u0438\u0442\u0435 \u0442\u0438 \u2014 \u0433\u043e\u043b\u044f\u043c \u0446\u0438\u0444\u0435\u0440\u0431\u043b\u0430\u0442 \u0441\u044a\u0441 \u0437\u043e\u043d\u0438\u0442\u0435, \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430 Xiaomi Smart Band \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "The heart rate in front of you \u2014 a big dial with zones, from a Xiaomi Smart Band on the client\'s wrist."

    .line 95
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430\u043d\u0435 \u2014 \u0449\u043e\u043c \u043f\u0443\u043b\u0441\u044a\u0442 \u0442\u0440\u044a\u0433\u043d\u0435 \u043d\u0430\u0434 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0430\u0442\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430, \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u0441\u0432\u0430\u043b\u044f \u043f\u043b\u0430\u0432\u043d\u043e. \u0421\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430 \u0433\u043b\u0435\u0434\u0430 20 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043d\u0430\u043f\u0440\u0435\u0434 \u0438 \u0440\u0435\u0430\u0433\u0438\u0440\u0430 \u043d\u0430\u0432\u0440\u0435\u043c\u0435."

    const-string v3, "Automatic reduction \u2014 when the heart rate heads above the safe limit, the load goes down smoothly. The system looks 20 seconds ahead and reacts in time."

    .line 97
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0412\u0440\u044a\u0449\u0430 \u0441\u0435 \u0441\u0430\u043c\u043e \u2014 \u043a\u043e\u0433\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0443\u0441\u043f\u043e\u043a\u043e\u0438, \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u0432\u0434\u0438\u0433\u0430 \u043e\u0431\u0440\u0430\u0442\u043d\u043e, \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0430\u0434 \u0437\u0430\u0434\u0430\u0434\u0435\u043d\u043e\u0442\u043e \u043e\u0442 \u0442\u0435\u0431."

    const-string v3, "Comes back by itself \u2014 once the heart rate settles, the load goes back up, never above what you set."

    .line 99
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041b\u0438\u0447\u043d\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430 \u2014 30 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0432 \u043f\u043e\u043a\u043e\u0439 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430\u0442 \u043f\u0440\u0430\u0433\u0430 \u0437\u0430 \u043a\u043e\u043d\u043a\u0440\u0435\u0442\u043d\u0438\u044f \u0447\u043e\u0432\u0435\u043a."

    const-string v3, "A personal limit \u2014 30 seconds of calibration at rest set the threshold for this person."

    .line 101
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041a\u0430\u043b\u043e\u0440\u0438\u0438 \u0438 \u0433\u0440\u0430\u0444\u0438\u043a\u0430 \u043d\u0430 \u043f\u0443\u043b\u0441\u0430 \u0437\u0430 \u0446\u044f\u043b\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v3, "Calories and a heart-rate chart for the whole session."

    .line 103
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 105
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0432\u0435\u0434\u043d\u044a\u0436: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430."

    const-string v3, "Set up the band once: Settings \u2192 Band."

    .line 106
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0421\u043b\u043e\u0436\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0434\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u041f\u0443\u043b\u0441\u201c."

    const-string v3, "Put the band on the client and tap Heart rate."

    .line 107
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 \u2014 30 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0432 \u043f\u043e\u043a\u043e\u0439."

    const-string v3, "Press \u21bb on the dial \u2014 30 seconds of calibration at rest."

    .line 108
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u201e\u0410\u0432\u0442\u043e-\u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430\u043d\u0435\u201c, \u0430\u043a\u043e \u0438\u0441\u043a\u0430\u0448 \u0441\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430 \u0434\u0430 \u043f\u0430\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0441\u0430\u043c\u0430 (\u043f\u043e \u043f\u043e\u0434\u0440\u0430\u0437\u0431\u0438\u0440\u0430\u043d\u0435 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u043e)."

    const-string v3, "Turn on Auto-reduce if you want the system to protect the client (off by default)."

    .line 109
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0422\u0432\u043e\u044f\u0442\u0430 \u0440\u044a\u0447\u043d\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u0432\u0438\u043d\u0430\u0433\u0438 \u0435 \u0441 \u043f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442."

    const-string v3, "Your manual strength change always wins."

    .line 111
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 113
    :cond_1c5
    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_265

    .line 114
    const-string v1, "A"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 115
    const v1, -0xd95966

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 116
    const-string v1, "\u0410\u0432\u0442\u043e"

    const-string v2, "Auto"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 117
    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0441 \u0432\u0433\u0440\u0430\u0434\u0435\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438"

    const-string v2, "Ready programs with built-in limits"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 118
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "13 \u0433\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u043f\u043e \u0446\u0435\u043b \u2014 \u0441\u0442\u044f\u0433\u0430\u043d\u0435, \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435 \u0438 \u0437\u0434\u0440\u0430\u0432\u0435; \u0430\u043a\u0442\u0438\u0432\u043d\u0438 \u0438 \u0432 \u043f\u043e\u043a\u043e\u0439 (\u0430\u043d\u0442\u0438\u0446\u0435\u043b\u0443\u043b\u0438\u0442, \u0434\u0440\u0435\u043d\u0430\u0436, \u0433\u0440\u044a\u0431, 50+, \u0441\u043b\u0435\u0434\u0440\u043e\u0434\u0438\u043b\u043d\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435)."

    const-string v3, "13 ready programs by goal \u2014 toning, weight loss and health; active and at rest (anti-cellulite, drainage, back, 50+, postpartum)."

    .line 119
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041d\u0430\u0433\u043b\u0430\u0441\u0435\u043d\u0438 \u043f\u043e \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u2014 \u043f\u043e\u043b\u044a\u0442, \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430, \u0440\u044a\u0441\u0442\u044a\u0442, \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e \u0441\u043c\u0435\u043d\u044f\u0442 \u0432\u0440\u0435\u043c\u0435\u0442\u043e, \u0441\u0438\u043b\u0430\u0442\u0430 \u0438 \u0437\u043e\u043d\u0438\u0442\u0435."

    const-string v3, "Fitted to the client \u2014 sex, age, height, weight and health change the time, strength and zones."

    .line 121
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0422\u0432\u044a\u0440\u0434\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u0441\u0435 \u043c\u0435\u0441\u0442\u044f\u0442 \u0441\u0430\u043c\u043e \u0432 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u043e\u0442\u043e \u0437\u0430 \u0432\u0441\u0435\u043a\u0438 \u043c\u043e\u043c\u0435\u043d\u0442 \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v3, "Hard limits \u2014 strength and parameters move only within what each moment of the program allows."

    .line 123
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0413\u0440\u0443\u043f\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u2014 \u0435\u0434\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438, \u043d\u043e \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0430 \u0437\u0430 \u0432\u0441\u0435\u043a\u0438 \u0447\u043e\u0432\u0435\u043a \u043f\u043e\u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v3, "Group training \u2014 one program for everyone, with limits and strength per person."

    .line 125
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0415\u0434\u043d\u0430\u043a\u0432\u043e \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e \u2014 \u043d\u043e\u0432 \u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u043f\u0440\u043e\u0432\u0435\u0436\u0434\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043a\u0430\u0442\u043e \u043e\u043f\u0438\u0442\u0435\u043d."

    const-string v3, "Consistent quality \u2014 a new trainer runs a session like an experienced one."

    .line 127
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u041e\u0442\u0447\u0435\u0442\u044a\u0442 \u0432\u043b\u0438\u0437\u0430 \u0432 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u043a\u0430\u0440\u0442\u043e\u043d."

    const-string v4, "The report goes into the client\'s card."

    .line 129
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 131
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u0410\u0432\u0442\u043e\u201c \u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u0446\u0435\u043b \u2014 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0435 \u043f\u044a\u0440\u0432\u0430."

    const-string v3, "Tap Auto and pick a goal \u2014 the recommended program comes first."

    .line 132
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 (\u043f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0435 \u043d\u0430 \u0435\u0434\u0438\u043d \u0440\u0435\u0434) \u0438 \u043f\u043e\u0442\u0432\u044a\u0440\u0434\u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e."

    const-string v3, "Check the client (the profile is one line) and confirm their health."

    .line 134
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0440\u0435\u0433\u043b\u0435\u0434\u0430\u0439 \u043f\u043b\u0430\u043d\u0430 \u2014 \u0432\u0440\u0435\u043c\u0435, \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u0443\u043b\u0441; \u043f\u0440\u0438 \u043d\u0443\u0436\u0434\u0430 \u0441\u043c\u0435\u043d\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442\u0442\u0430 \u0438\u043b\u0438 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u0430."

    const-string v3, "Review the plan \u2014 time, feel, heart rate; change duration or intensity if needed."

    .line 136
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u201e\u041f\u0443\u0441\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435\u201c \u2192 \u043d\u0430\u0433\u043b\u0430\u0441\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u043e \u0440\u0435\u0434\u043e\u0432\u0435 \u2192 \u201e\u0421\u0442\u0430\u0440\u0442\u201c."

    const-string v3, "Start the impulses \u2192 set the strength per row \u2192 Start."

    .line 138
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430: \u0441\u0438\u043b\u0430 \u00b1, \u043f\u0430\u0443\u0437\u0430 \u0438 \u201e\u041f\u0440\u0438\u043a\u043b\u044e\u0447\u0438\u201c."

    const-string v3, "During the session: strength \u00b1, pause and Finish."

    .line 140
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 142
    :cond_265
    const-string v1, "ai"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    .line 143
    const-string v1, "AI"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 144
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 145
    const-string v1, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v2, "AI session"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 146
    const-string v1, "\u0423\u043c\u043d\u0430 \u0441\u0435\u0441\u0438\u044f, \u043a\u043e\u044f\u0442\u043e \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u043f\u043e \u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u0432 \u0440\u0435\u0430\u043b\u043d\u043e \u0432\u0440\u0435\u043c\u0435"

    const-string v2, "A smart session that adapts to heart rate and fatigue in real time"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 148
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u043e\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0441\u0430\u043c\u0430 \u2014 \u0432\u0441\u044f\u043a\u0430 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u0441\u043b\u0435\u0434\u0438 \u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u0440\u0435\u0448\u0430\u0432\u0430 \u0441\u0438\u043b\u0430, \u043f\u0430\u0443\u0437\u0438 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438."

    const-string v3, "Leads the session \u2014 every second it watches heart rate and muscle fatigue and sets strength, pauses and rests."

    .line 149
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041b\u0438\u0447\u0435\u043d \u043f\u043b\u0430\u043d \u2014 \u043e\u0442 \u0446\u0435\u043b\u0442\u0430, \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0438 \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439 \u0441\u0435 \u0441\u0442\u0440\u043e\u0438 \u043f\u043b\u0430\u043d \u0441 \u0444\u0430\u0437\u0438 \u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u0437\u0430 \u0442\u043e\u0437\u0438 \u0447\u043e\u0432\u0435\u043a."

    const-string v3, "A personal plan \u2014 goal, profile and resting heart rate build a plan with phases and blocks for this person."

    .line 151
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041c\u043d\u043e\u0433\u043e\u043f\u043b\u0430\u0441\u0442\u043e\u0432\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u2014 \u0437\u0430\u0449\u0438\u0442\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438, \u0431\u0443\u0442\u043e\u043d\u0438 \u0421\u0422\u041e\u041f \u0438 \u041d\u0410\u041c\u0410\u041b\u0418, \u043d\u0438\u043a\u043e\u0433\u0430 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u043d\u0430\u0434 \u043f\u043b\u0430\u043d\u0430."

    const-string v3, "Layered safety \u2014 protective limits, STOP and REDUCE buttons, never an increase above the plan."

    .line 153
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041e\u0431\u044f\u0441\u043d\u044f\u0432\u0430 \u0441\u0435 \u2014 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0430 \u0441\u0435 \u0432\u0438\u0436\u0434\u0430 \u043a\u0430\u043a\u0432\u043e \u043f\u0440\u0430\u0432\u0438 AI \u0438 \u0437\u0430\u0449\u043e."

    const-string v3, "Explains itself \u2014 the screen shows what the AI does and why."

    .line 155
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041e\u0442\u0447\u0435\u0442 \u0441 \u0440\u0435\u0437\u0443\u043b\u0442\u0430\u0442 \u2014 \u0432\u0440\u0435\u043c\u0435 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u0435\u043d \u043f\u0443\u043b\u0441, \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0438 \u0434\u043e\u0437\u0430; \u0441\u043f\u043e\u0434\u0435\u043b\u044f \u0441\u0435 \u0441 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "A report with results \u2014 time in zone, max heart rate, recovery and dose; shareable with the client."

    .line 156
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u041c\u043e\u0436\u0435 \u0438 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u043e \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0438 \u0431\u0435\u0437 \u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u0434\u043e \u0441\u0435\u0431\u0435 \u0441\u0438, \u043f\u0440\u0438 \u043f\u043e-\u0441\u0442\u0440\u043e\u0433\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438."

    const-string v4, "Works solo too \u2014 the client can train without a trainer next to them, with stricter limits."

    .line 158
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 161
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201eAI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c \u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u0446\u0435\u043b \u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442."

    const-string v3, "Tap AI session and pick a goal and duration."

    .line 162
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u043e\u0442\u0432\u044a\u0440\u0434\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e (\u201e\u0411\u0435\u0437 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f, \u0434\u043e\u0431\u0440\u0435 \u0435 \u0434\u043d\u0435\u0441\u201c)."

    const-string v3, "Confirm the client and their health (\"No contraindications, feeling well today\")."

    .line 163
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 30 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430."

    const-string v3, "Resting heart rate \u2014 30 seconds with the band on the wrist."

    .line 165
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u0440\u0435\u0433\u043b\u0435\u0434\u0430\u0439 \u043f\u043b\u0430\u043d\u0430 \u0438 \u043d\u0430\u0433\u043b\u0430\u0441\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u043e \u0441\u043a\u0430\u043b\u0430\u0442\u0430 \u043d\u0430 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e (0\u201310)."

    const-string v3, "Review the plan and set the strength on the feel scale (0\u201310)."

    .line 166
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u201e\u0421\u0442\u0430\u0440\u0442\u201c \u2014 AI \u0432\u043e\u0434\u0438; \u0442\u0438 \u043c\u043e\u0436\u0435\u0448 \u0434\u0430 \u043f\u0430\u0443\u0437\u0438\u0440\u0430\u0448, \u0434\u0430 \u043d\u0430\u043c\u0430\u043b\u0438\u0448 \u0438\u043b\u0438 \u0434\u0430 \u0441\u043f\u0440\u0435\u0448 \u043f\u043e \u0432\u0441\u044f\u043a\u043e \u0432\u0440\u0435\u043c\u0435."

    const-string v3, "Start \u2014 the AI leads; you can pause, reduce or stop at any time."

    .line 168
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u201e\u0417\u0430\u0442\u0432\u043e\u0440\u0438\u201c \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0432\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0438 \u043e\u0442\u0432\u0430\u0440\u044f \u043e\u0442\u0447\u0435\u0442\u0430 \u0432 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u043a\u0430\u0440\u0442\u043e\u043d."

    const-string v4, "Close ends the session and opens the report in the client\'s card."

    .line 170
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 174
    :cond_30f
    const-string v1, "\u231a"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 175
    const v1, -0xbd5a0b

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 176
    const-string v1, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "Band"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 177
    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0432 \u0440\u044a\u043a\u0430\u0442\u0430 \u0442\u0438"

    const-string v2, "The training on your wrist"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 178
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "\u0421\u0432\u043e\u0431\u043e\u0434\u0430 \u043e\u0442 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u2014 \u0441\u0442\u0430\u0440\u0442, \u043f\u0430\u0443\u0437\u0430 \u0438 \u0441\u0438\u043b\u0430 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u0441\u0438 \u0434\u043e \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "Free from the tablet \u2014 start, pause and strength from the band while you are next to the client."

    .line 179
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u043f\u0443\u043b\u0441, \u0442\u0430\u0439\u043c\u0435\u0440, \u043c\u0443\u0437\u0438\u043a\u0430, AI \u0438 \u043e\u0431\u043e\u0431\u0449\u0435\u043d\u0438\u0435 \u0441\u043b\u0435\u0434 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043d\u0430 \u043a\u0438\u0442\u043a\u0430\u0442\u0430."

    const-string v3, "The XEMS app on the band \u2014 heart rate, timer, music, AI and the session summary on the wrist."

    .line 181
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0420\u0430\u0431\u043e\u0442\u0438 \u0438 \u0431\u0435\u0437 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435 \u2014 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0438\u044f\u0442 \u0435\u043a\u0440\u0430\u043d \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430 \u0434\u0438\u0441\u0442\u0430\u043d\u0446\u0438\u043e\u043d\u043d\u043e \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v3, "Works without installing too \u2014 the band\'s music screen becomes the training remote."

    .line 183
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "Xiaomi Smart Band 8, 9 \u0438 10."

    const-string v3, "Xiaomi Smart Band 8, 9 and 10."

    .line 185
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 187
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430: \u0438\u0437\u0431\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0438 \u0432\u044a\u0432\u0435\u0434\u0438 \u043a\u043b\u044e\u0447\u0430 \u045d \u0432\u0435\u0434\u043d\u044a\u0436."

    const-string v3, "Settings \u2192 Band: pick the band and enter its key once."

    .line 188
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041e\u0442 \u0441\u044a\u0449\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430."

    const-string v3, "Install the XEMS app on the band from the same screen."

    .line 189
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u0441\u0430\u043c\u043e."

    const-string v3, "At the start of a session the band app opens by itself."

    .line 190
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430: \u0441\u0442\u0430\u0440\u0442 \u0438 \u043f\u0430\u0443\u0437\u0430, \u0441\u0438\u043b\u0430 + \u0438 \u2212."

    const-string v3, "On the band: start and pause, strength + and \u2212."

    .line 191
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c
.end method

.method private static rise(Landroid/view/View;I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 343
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

    .line 344
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 199
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 207
    :cond_4
    :goto_4
    return-void

    .line 203
    :cond_5
    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->build(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_4

    .line 204
    :catch_9
    move-exception v0

    .line 205
    const-string v1, "XemsModuleInfo.show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static stagger(Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 326
    move v2, v3

    move v4, v3

    .line 327
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3e

    .line 328
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 329
    instance-of v0, v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_37

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_37

    .line 330
    check-cast v1, Landroid/widget/LinearLayout;

    move v0, v3

    .line 331
    :goto_1e
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_31

    .line 332
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v5, v4, 0x1

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->rise(Landroid/view/View;I)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_1e

    :cond_31
    move v1, v4

    .line 327
    :goto_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_3

    .line 335
    :cond_37
    add-int/lit8 v0, v4, 0x1

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->rise(Landroid/view/View;I)V

    move v1, v0

    goto :goto_32

    .line 338
    :cond_3e
    return-void
.end method

.method private static stepRow(Landroid/app/Activity;ILjava/lang/String;I)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 305
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 306
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 307
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 308
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 309
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 310
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 311
    invoke-virtual {v2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 312
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 314
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 316
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 317
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 318
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 319
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    return-object v0
.end method

.method public static subscribe(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 351
    if-nez p0, :cond_3

    .line 376
    :goto_2
    return-void

    .line 355
    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    move-result-object v0

    .line 356
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

    .line 357
    const-string v1, "\u0426\u0435\u043d\u0438\u0442\u0435 \u0438 \u043f\u043b\u0430\u0449\u0430\u043d\u0435\u0442\u043e \u0438\u0434\u0432\u0430\u0442 \u0441\u044a\u0432\u0441\u0435\u043c \u0441\u043a\u043e\u0440\u043e \u2014 \u0442\u0443\u043a, \u0441 \u0435\u0434\u043d\u043e \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435."

    const-string v2, "Prices and payment are coming very soon \u2014 right here, in one tap."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 359
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 360
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    const-string v1, "\u0418\u043c\u0430\u0448 \u043a\u043b\u044e\u0447 \u0437\u0430 \u0434\u043e\u0441\u0442\u044a\u043f? \u0412\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437 \u0438 \u043c\u043e\u0434\u0443\u043b\u044a\u0442 \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430 \u0432\u0435\u0434\u043d\u0430\u0433\u0430."

    const-string v2, "Have an access key? Enter it in Settings \u2192 Access & license and the module unlocks at once."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 363
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 364
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
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

    .line 366
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v3, 0xe

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    const-string v1, "\u0420\u0430\u0437\u0431\u0440\u0430\u0445"

    const-string v2, "Got it"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 368
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v3, v4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 371
    const v1, 0x3f666666    # 0.9f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 372
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stagger(Landroid/widget/LinearLayout;)V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d2} :catch_d4

    goto/16 :goto_2

    .line 373
    :catch_d4
    move-exception v0

    .line 374
    const-string v1, "XemsModuleInfo.subscribe"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 380
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    .line 382
    :goto_4
    return-object p0

    .line 381
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

    .line 276
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 277
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 278
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 279
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 280
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

    .line 281
    const-string v1, "\u2713"

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v1, v2, p2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 282
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 283
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 284
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 285
    const/16 v3, 0x2e

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 286
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 288
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    const-string v1, ""

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 290
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 291
    const-string v2, " \u2014 "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 292
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 293
    if-lez v2, :cond_87

    .line 294
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 296
    :cond_87
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 298
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 299
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 300
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    return-object v0
.end method
