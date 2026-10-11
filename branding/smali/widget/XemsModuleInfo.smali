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
    .line 244
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    move-result-object v2

    .line 245
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->open(Ljava/lang/String;)Z

    move-result v3

    .line 246
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v4, 0x280

    invoke-static {p0, v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v4

    .line 249
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 250
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 251
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

    .line 252
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 253
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 254
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 255
    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    const/16 v7, 0x2e

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 256
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget v7, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    const/16 v8, 0x88

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 259
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 261
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    const/high16 v1, 0x41880000    # 17.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {p0, v0, v1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    const v7, 0x3f933333    # 1.15f

    invoke-virtual {v0, v1, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 263
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    const-string v0, "vr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "\u2713 \u0412\u0438\u043d\u0430\u0433\u0438 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    const-string v1, "\u2713 Always on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 266
    :goto_93
    const/high16 v7, 0x41500000    # 13.0f

    if-eqz v3, :cond_117

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_99
    const/4 v8, 0x1

    .line 264
    invoke-static {p0, v1, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 267
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 269
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 270
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
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

    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 276
    const/4 v0, 0x0

    :goto_e0
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_11d

    .line 277
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

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_e0

    .line 251
    :cond_fc
    const/high16 v0, 0x41e00000    # 28.0f

    goto/16 :goto_27

    .line 265
    :cond_100
    if-eqz v3, :cond_10c

    const-string v0, "\u2713 \u0412\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u0432 \u0430\u0431\u043e\u043d\u0430\u043c\u0435\u043d\u0442\u0430 \u0442\u0438"

    const-string v1, "\u2713 Included in your subscription"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_93

    .line 266
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

    .line 277
    :cond_11a
    const/16 v1, 0x8

    goto :goto_f2

    .line 279
    :cond_11d
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    if-eqz v3, :cond_1ce

    .line 283
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

    .line 284
    const/4 v0, 0x0

    :goto_13c
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15f

    .line 285
    iget-object v3, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    add-int/lit8 v1, v0, 0x1

    iget-object v5, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget v6, v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    invoke-static {p0, v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stepRow(Landroid/app/Activity;ILjava/lang/String;I)Landroid/view/View;

    move-result-object v5

    if-nez v0, :cond_15c

    const/4 v1, 0x0

    :goto_152
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_13c

    .line 285
    :cond_15c
    const/16 v1, 0xa

    goto :goto_152

    .line 287
    :cond_15f
    const-string v0, "\u0420\u0430\u0437\u0431\u0440\u0430\u0445"

    const-string v1, "Got it"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1cc

    const/4 v0, 0x2

    :goto_16a
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v3, 0x0

    invoke-direct {v1, v4, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {v3, v5, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    if-eqz p2, :cond_1bb

    .line 291
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

    .line 292
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    invoke-direct {v1, v4, p2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const v2, 0x3fb33333    # 1.4f

    const/16 v3, 0xa

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_1bb
    :goto_1bb
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 305
    const v0, 0x3f666666    # 0.9f

    invoke-static {p0, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 306
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stagger(Landroid/widget/LinearLayout;)V

    .line 307
    return-void

    .line 287
    :cond_1cc
    const/4 v0, 0x0

    goto :goto_16a

    .line 296
    :cond_1ce
    const-string v0, "\u041d\u0435 \u0441\u0435\u0433\u0430"

    const-string v1, "Not now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    const-string v0, "\u0410\u0431\u043e\u043d\u0438\u0440\u0430\u0439 \u0441\u0435"

    const-string v1, "Subscribe"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 300
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Subscribe;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const v2, 0x3fb33333    # 1.4f

    const/16 v3, 0xa

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1bb
.end method

.method static entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;-><init>()V

    .line 44
    const-string v1, "timer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 45
    const-string v1, "\u23f1"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 46
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 47
    const-string v1, "\u0422\u0430\u0439\u043c\u0435\u0440"

    const-string v2, "Timer"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 48
    const-string v1, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u0438 \u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438, \u043a\u043e\u0438\u0442\u043e \u0432\u044a\u0440\u0432\u044f\u0442 \u0441\u0430\u043c\u0438"

    const-string v2, "Intervals and block programs that run by themselves"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 49
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0441 \u044f\u0441\u043d\u0430 \u0441\u0442\u0440\u0443\u043a\u0442\u0443\u0440\u0430 \u2014 \u0440\u0430\u0431\u043e\u0442\u0430 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0441\u0430\u043c\u0438, \u0430 \u0442\u0438 \u0441\u043b\u0435\u0434\u0438\u0448 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0442\u0435\u0445\u043d\u0438\u043a\u0430\u0442\u0430."

    const-string v3, "A clear structure \u2014 work and rest switch by themselves while you watch the client and the technique."

    .line 50
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0411\u043b\u043e\u043a\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430, \u043e\u0441\u043d\u043e\u0432\u043d\u0430 \u0447\u0430\u0441\u0442 \u0438 \u0440\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u0441 \u0440\u0430\u0437\u043b\u0438\u0447\u043d\u0430 \u0441\u0438\u043b\u0430, \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430 \u0432 \u0435\u0434\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v3, "Block programs \u2014 warm-up, main part and cool-down with their own strength, frequency and width in one session."

    .line 52
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0417\u0432\u0443\u043a\u043e\u0432 \u0441\u0438\u0433\u043d\u0430\u043b \u043f\u0440\u0438 \u0432\u0441\u044f\u043a\u0430 \u0441\u043c\u044f\u043d\u0430 \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0437\u043d\u0430\u0435 \u043a\u043e\u0433\u0430 \u0434\u0430 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0438 \u0438 \u043a\u043e\u0433\u0430 \u0434\u0430 \u043e\u0442\u043f\u0443\u0441\u043d\u0435."

    const-string v3, "A sound at every switch \u2014 the client knows when to work and when to relax."

    .line 54
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u043b\u044e\u0431\u0438\u043c\u0438\u0442\u0435 \u0441\u0445\u0435\u043c\u0438 \u0441\u0435 \u043f\u0443\u0441\u043a\u0430\u0442 \u0441 \u0435\u0434\u043d\u043e \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435, \u0435\u0434\u043d\u0430\u043a\u0432\u043e \u043e\u0442 \u0432\u0441\u0435\u043a\u0438 \u0442\u0440\u0435\u043d\u044c\u043e\u0440."

    const-string v3, "Saved programs \u2014 favourite schemes start with one tap, the same for every trainer."

    .line 56
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0412\u044a\u0440\u0432\u0438 \u0441 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u2014 \u0442\u0440\u044a\u0433\u0432\u0430 \u0441\u044a\u0441 \u0441\u0442\u0430\u0440\u0442\u0430 \u0438 \u0441\u043f\u0438\u0440\u0430 \u043f\u0440\u0438 \u043f\u0430\u0443\u0437\u0430 \u0438\u043b\u0438 \u043a\u0440\u0430\u0439."

    const-string v3, "Runs with the training \u2014 starts with it, stops on pause or at the end."

    .line 58
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 61
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u043f\u043b\u043e\u0447\u043a\u0430\u0442\u0430 \u201e\u0422\u0430\u0439\u043c\u0435\u0440\u201c."

    const-string v3, "Tap the Timer tile."

    .line 62
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0417\u0430\u0434\u0430\u0439 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b (\u0440\u0430\u0431\u043e\u0442\u0430, \u043f\u043e\u0447\u0438\u0432\u043a\u0430, \u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f) \u0438\u043b\u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043e\u0442 \u201e\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u201c."

    const-string v3, "Set an interval (work, rest, repeats) or pick a block program under Programs."

    .line 63
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439\u201c \u2014 \u0442\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0435 \u0433\u043e\u0442\u043e\u0432."

    const-string v3, "Press Activate \u2014 the timer is ready."

    .line 65
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u0443\u0441\u043d\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u2014 \u0442\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0442\u0440\u044a\u0433\u0432\u0430 \u0441 \u043d\u0435\u044f."

    const-string v3, "Start the training \u2014 the timer starts with it."

    .line 66
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u201e\u0417\u0430\u043f\u0430\u0437\u0438\u201c \u043f\u0430\u0437\u0438 \u0441\u0445\u0435\u043c\u0430\u0442\u0430 \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043f\u044a\u0442, \u201e\u0417\u0432\u0443\u043a\u201c \u0441\u043c\u0435\u043d\u044f \u0441\u0438\u0433\u043d\u0430\u043b\u0430."

    const-string v3, "Save keeps the scheme for next time; Sound changes the signal."

    .line 67
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    .line 228
    :goto_9c
    return-object v0

    .line 70
    :cond_9d
    const-string v1, "music"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 71
    const-string v1, "\u266b"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 72
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 73
    const-string v1, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v2, "Music"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 74
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0442 \u0440\u0438\u0442\u044a\u043c\u0430 \u043d\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430"

    const-string v2, "The impulses follow the music"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 75
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432 \u0440\u0438\u0442\u044a\u043c \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0441\u043b\u0435\u0434\u0432\u0430 \u0431\u0438\u0439\u0442\u0430 \u0438 \u0434\u0438\u043d\u0430\u043c\u0438\u043a\u0430\u0442\u0430 \u043d\u0430 \u043f\u0435\u0441\u0435\u043d\u0442\u0430 \u0432 \u0440\u0435\u0430\u043b\u043d\u043e \u0432\u0440\u0435\u043c\u0435."

    const-string v3, "Training in rhythm \u2014 the impulse strength follows the beat and the dynamics of the song in real time."

    .line 76
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u043e\u0432\u0435\u0447\u0435 \u043c\u043e\u0442\u0438\u0432\u0430\u0446\u0438\u044f \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0443\u0441\u0435\u0449\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0441 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e \u0438 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u043c\u0438\u043d\u0430\u0432\u0430 \u043d\u0435\u0443\u0441\u0435\u0442\u043d\u043e."

    const-string v3, "More motivation \u2014 the client feels the music with the whole body and the time flies."

    .line 78
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0411\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e \u2014 \u0442\u0430\u0432\u0430\u043d\u044a\u0442 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0435 \u0441\u0435 \u043d\u0430\u0434\u0445\u0432\u044a\u0440\u043b\u044f."

    const-string v3, "Safe \u2014 each client\'s strength ceiling is never exceeded."

    .line 80
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0441\u0435 \u0441\u0430\u043c \u2014 \u0440\u0438\u0442\u044a\u043c, \u043c\u0438\u043d\u0438\u043c\u0443\u043c, \u043c\u0435\u043a\u043e\u0442\u0430 \u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f\u0442 \u0441\u043f\u043e\u0440\u0435\u0434 \u0432\u0441\u044f\u043a\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u043f\u0435\u0441\u0435\u043d\u0442\u0430."

    const-string v3, "Tunes itself \u2014 rhythm, minimum, softness and frequency follow each part of the song."

    .line 82
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0422\u043e\u0447\u043d\u043e \u043d\u0430 \u0443\u0434\u0430\u0440\u0430 \u2014 \u0437\u0430\u0431\u0430\u0432\u044f\u043d\u0435\u0442\u043e \u043f\u043e Bluetooth \u0434\u043e \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u0441\u0435 \u0438\u0437\u043c\u0435\u0440\u0432\u0430 \u0438 \u043a\u043e\u043c\u043f\u0435\u043d\u0441\u0438\u0440\u0430."

    const-string v3, "Right on the beat \u2014 the Bluetooth delay to the suit is measured and compensated."

    .line 84
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 87
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0430 \u201e\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c \u0438 \u0437\u0430\u0434\u0430\u0439 \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u043e\u0442 \u043a\u0440\u044a\u0433\u043e\u0432\u0438\u044f \u0441\u043b\u0430\u0439\u0434\u0435\u0440 \u043d\u0430 \u0440\u0435\u0434\u0430 \u043c\u0443."

    const-string v3, "Add the client on the Training screen and set the strength ceiling with the round slider on their row."

    .line 88
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u041c\u0443\u0437\u0438\u043a\u0430\u201c \u0438 \u0434\u043e\u0431\u0430\u0432\u0438 \u043f\u0435\u0441\u043d\u0438 \u0441 \u2630."

    const-string v3, "Tap Music and add songs with \u2630."

    .line 90
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u25b6 \u2014 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u0441 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430."

    const-string v3, "Press \u25b6 \u2014 the impulses start with the music."

    .line 91
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0421 \u2699 \u043f\u0440\u043e\u043c\u0435\u043d\u0438 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e (\u0420\u0438\u0442\u044a\u043c, \u041c\u0438\u043d\u0438\u043c\u0443\u043c, \u041c\u0435\u043a\u043e\u0442\u0430, \u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442) \u0438\u043b\u0438 \u043e\u0441\u0442\u0430\u0432\u0438 \u201e\u0410\u0432\u0442\u043e\u201c."

    const-string v3, "Use \u2699 to change the feel (Rhythm, Minimum, Softness, Sensitivity) or keep Auto."

    .line 92
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u2715 \u0441\u043f\u0438\u0440\u0430 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0438 \u0437\u0430\u0442\u0432\u0430\u0440\u044f \u043f\u043b\u0435\u0439\u044a\u0440\u0430."

    const-string v3, "\u2715 stops the music and closes the player."

    .line 94
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 96
    :cond_131
    const-string v1, "pulse"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 97
    const-string v1, "\u2665"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 98
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 99
    const-string v1, "\u041f\u0443\u043b\u0441"

    const-string v2, "Heart rate"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 100
    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043d\u0430 \u0436\u0438\u0432\u043e \u0438 \u0437\u0430\u0449\u0438\u0442\u0430 \u043e\u0442 \u043f\u0440\u0435\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    const-string v2, "Live heart rate and overload protection"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 101
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043f\u0440\u0435\u0434 \u043e\u0447\u0438\u0442\u0435 \u0442\u0438 \u2014 \u0433\u043e\u043b\u044f\u043c \u0446\u0438\u0444\u0435\u0440\u0431\u043b\u0430\u0442 \u0441\u044a\u0441 \u0437\u043e\u043d\u0438\u0442\u0435, \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430 Xiaomi Smart Band \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "The heart rate in front of you \u2014 a big dial with zones, from a Xiaomi Smart Band on the client\'s wrist."

    .line 102
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e \u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430\u043d\u0435 \u2014 \u0449\u043e\u043c \u043f\u0443\u043b\u0441\u044a\u0442 \u0442\u0440\u044a\u0433\u043d\u0435 \u043d\u0430\u0434 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u0430\u0442\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430, \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u0441\u0432\u0430\u043b\u044f \u043f\u043b\u0430\u0432\u043d\u043e. \u0421\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430 \u0433\u043b\u0435\u0434\u0430 20 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043d\u0430\u043f\u0440\u0435\u0434 \u0438 \u0440\u0435\u0430\u0433\u0438\u0440\u0430 \u043d\u0430\u0432\u0440\u0435\u043c\u0435."

    const-string v3, "Automatic reduction \u2014 when the heart rate heads above the safe limit, the load goes down smoothly. The system looks 20 seconds ahead and reacts in time."

    .line 104
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0412\u0440\u044a\u0449\u0430 \u0441\u0435 \u0441\u0430\u043c\u043e \u2014 \u043a\u043e\u0433\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0443\u0441\u043f\u043e\u043a\u043e\u0438, \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u0432\u0434\u0438\u0433\u0430 \u043e\u0431\u0440\u0430\u0442\u043d\u043e, \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0430\u0434 \u0437\u0430\u0434\u0430\u0434\u0435\u043d\u043e\u0442\u043e \u043e\u0442 \u0442\u0435\u0431."

    const-string v3, "Comes back by itself \u2014 once the heart rate settles, the load goes back up, never above what you set."

    .line 106
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041b\u0438\u0447\u043d\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430 \u2014 30 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0432 \u043f\u043e\u043a\u043e\u0439 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430\u0442 \u043f\u0440\u0430\u0433\u0430 \u0437\u0430 \u043a\u043e\u043d\u043a\u0440\u0435\u0442\u043d\u0438\u044f \u0447\u043e\u0432\u0435\u043a."

    const-string v3, "A personal limit \u2014 30 seconds of calibration at rest set the threshold for this person."

    .line 108
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041a\u0430\u043b\u043e\u0440\u0438\u0438 \u0438 \u0433\u0440\u0430\u0444\u0438\u043a\u0430 \u043d\u0430 \u043f\u0443\u043b\u0441\u0430 \u0437\u0430 \u0446\u044f\u043b\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v3, "Calories and a heart-rate chart for the whole session."

    .line 110
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 112
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0432\u0435\u0434\u043d\u044a\u0436: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430."

    const-string v3, "Set up the band once: Settings \u2192 Band."

    .line 113
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0421\u043b\u043e\u0436\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0434\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u041f\u0443\u043b\u0441\u201c."

    const-string v3, "Put the band on the client and tap Heart rate."

    .line 114
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 \u2014 30 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0432 \u043f\u043e\u043a\u043e\u0439."

    const-string v3, "Press \u21bb on the dial \u2014 30 seconds of calibration at rest."

    .line 115
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u201e\u0410\u0432\u0442\u043e-\u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430\u043d\u0435\u201c, \u0430\u043a\u043e \u0438\u0441\u043a\u0430\u0448 \u0441\u0438\u0441\u0442\u0435\u043c\u0430\u0442\u0430 \u0434\u0430 \u043f\u0430\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0441\u0430\u043c\u0430 (\u043f\u043e \u043f\u043e\u0434\u0440\u0430\u0437\u0431\u0438\u0440\u0430\u043d\u0435 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u043e)."

    const-string v3, "Turn on Auto-reduce if you want the system to protect the client (off by default)."

    .line 116
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0422\u0432\u043e\u044f\u0442\u0430 \u0440\u044a\u0447\u043d\u0430 \u043f\u0440\u043e\u043c\u044f\u043d\u0430 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u0432\u0438\u043d\u0430\u0433\u0438 \u0435 \u0441 \u043f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442."

    const-string v3, "Your manual strength change always wins."

    .line 118
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 120
    :cond_1c5
    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_265

    .line 121
    const-string v1, "A"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 122
    const v1, -0xd95966

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 123
    const-string v1, "\u0410\u0432\u0442\u043e"

    const-string v2, "Auto"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 124
    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0441 \u0432\u0433\u0440\u0430\u0434\u0435\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438"

    const-string v2, "Ready programs with built-in limits"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 125
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "13 \u0433\u043e\u0442\u043e\u0432\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u043f\u043e \u0446\u0435\u043b \u2014 \u0441\u0442\u044f\u0433\u0430\u043d\u0435, \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435 \u0438 \u0437\u0434\u0440\u0430\u0432\u0435; \u0430\u043a\u0442\u0438\u0432\u043d\u0438 \u0438 \u0432 \u043f\u043e\u043a\u043e\u0439 (\u0430\u043d\u0442\u0438\u0446\u0435\u043b\u0443\u043b\u0438\u0442, \u0434\u0440\u0435\u043d\u0430\u0436, \u0433\u0440\u044a\u0431, 50+, \u0441\u043b\u0435\u0434\u0440\u043e\u0434\u0438\u043b\u043d\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435)."

    const-string v3, "13 ready programs by goal \u2014 toning, weight loss and health; active and at rest (anti-cellulite, drainage, back, 50+, postpartum)."

    .line 126
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041d\u0430\u0433\u043b\u0430\u0441\u0435\u043d\u0438 \u043f\u043e \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u2014 \u043f\u043e\u043b\u044a\u0442, \u0432\u044a\u0437\u0440\u0430\u0441\u0442\u0442\u0430, \u0440\u044a\u0441\u0442\u044a\u0442, \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e \u0441\u043c\u0435\u043d\u044f\u0442 \u0432\u0440\u0435\u043c\u0435\u0442\u043e, \u0441\u0438\u043b\u0430\u0442\u0430 \u0438 \u0437\u043e\u043d\u0438\u0442\u0435."

    const-string v3, "Fitted to the client \u2014 sex, age, height, weight and health change the time, strength and zones."

    .line 128
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0422\u0432\u044a\u0440\u0434\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u0438 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438\u0442\u0435 \u0441\u0435 \u043c\u0435\u0441\u0442\u044f\u0442 \u0441\u0430\u043c\u043e \u0432 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u043e\u0442\u043e \u0437\u0430 \u0432\u0441\u0435\u043a\u0438 \u043c\u043e\u043c\u0435\u043d\u0442 \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v3, "Hard limits \u2014 strength and parameters move only within what each moment of the program allows."

    .line 130
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u0413\u0440\u0443\u043f\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u2014 \u0435\u0434\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438, \u043d\u043e \u0433\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0430 \u0437\u0430 \u0432\u0441\u0435\u043a\u0438 \u0447\u043e\u0432\u0435\u043a \u043f\u043e\u043e\u0442\u0434\u0435\u043b\u043d\u043e."

    const-string v3, "Group training \u2014 one program for everyone, with limits and strength per person."

    .line 132
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u0415\u0434\u043d\u0430\u043a\u0432\u043e \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e \u2014 \u043d\u043e\u0432 \u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u043f\u0440\u043e\u0432\u0435\u0436\u0434\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043a\u0430\u0442\u043e \u043e\u043f\u0438\u0442\u0435\u043d."

    const-string v3, "Consistent quality \u2014 a new trainer runs a session like an experienced one."

    .line 134
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u041e\u0442\u0447\u0435\u0442\u044a\u0442 \u0432\u043b\u0438\u0437\u0430 \u0432 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u043a\u0430\u0440\u0442\u043e\u043d."

    const-string v4, "The report goes into the client\'s card."

    .line 136
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 138
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201e\u0410\u0432\u0442\u043e\u201c \u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u0446\u0435\u043b \u2014 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0435 \u043f\u044a\u0440\u0432\u0430."

    const-string v3, "Tap Auto and pick a goal \u2014 the recommended program comes first."

    .line 139
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 (\u043f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0435 \u043d\u0430 \u0435\u0434\u0438\u043d \u0440\u0435\u0434) \u0438 \u043f\u043e\u0442\u0432\u044a\u0440\u0434\u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e."

    const-string v3, "Check the client (the profile is one line) and confirm their health."

    .line 141
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0440\u0435\u0433\u043b\u0435\u0434\u0430\u0439 \u043f\u043b\u0430\u043d\u0430 \u2014 \u0432\u0440\u0435\u043c\u0435, \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043f\u0443\u043b\u0441; \u043f\u0440\u0438 \u043d\u0443\u0436\u0434\u0430 \u0441\u043c\u0435\u043d\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442\u0442\u0430 \u0438\u043b\u0438 \u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0442\u0435\u0442\u0430."

    const-string v3, "Review the plan \u2014 time, feel, heart rate; change duration or intensity if needed."

    .line 143
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u201e\u041f\u0443\u0441\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435\u201c \u2192 \u043d\u0430\u0433\u043b\u0430\u0441\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u043e \u0440\u0435\u0434\u043e\u0432\u0435 \u2192 \u201e\u0421\u0442\u0430\u0440\u0442\u201c."

    const-string v3, "Start the impulses \u2192 set the strength per row \u2192 Start."

    .line 145
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430: \u0441\u0438\u043b\u0430 \u00b1, \u043f\u0430\u0443\u0437\u0430 \u0438 \u201e\u041f\u0440\u0438\u043a\u043b\u044e\u0447\u0438\u201c."

    const-string v3, "During the session: strength \u00b1, pause and Finish."

    .line 147
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 149
    :cond_265
    const-string v1, "ai"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    .line 150
    const-string v1, "AI"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 151
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 152
    const-string v1, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v2, "AI session"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 153
    const-string v1, "\u0423\u043c\u043d\u0430 \u0441\u0435\u0441\u0438\u044f, \u043a\u043e\u044f\u0442\u043e \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u043f\u043e \u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u0432 \u0440\u0435\u0430\u043b\u043d\u043e \u0432\u0440\u0435\u043c\u0435"

    const-string v2, "A smart session that adapts to heart rate and fatigue in real time"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 155
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u043e\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0441\u0430\u043c\u0430 \u2014 \u0432\u0441\u044f\u043a\u0430 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 \u0441\u043b\u0435\u0434\u0438 \u043f\u0443\u043b\u0441\u0430 \u0438 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u043d\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u0440\u0435\u0448\u0430\u0432\u0430 \u0441\u0438\u043b\u0430, \u043f\u0430\u0443\u0437\u0438 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438."

    const-string v3, "Leads the session \u2014 every second it watches heart rate and muscle fatigue and sets strength, pauses and rests."

    .line 156
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041b\u0438\u0447\u0435\u043d \u043f\u043b\u0430\u043d \u2014 \u043e\u0442 \u0446\u0435\u043b\u0442\u0430, \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0438 \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439 \u0441\u0435 \u0441\u0442\u0440\u043e\u0438 \u043f\u043b\u0430\u043d \u0441 \u0444\u0430\u0437\u0438 \u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u0437\u0430 \u0442\u043e\u0437\u0438 \u0447\u043e\u0432\u0435\u043a."

    const-string v3, "A personal plan \u2014 goal, profile and resting heart rate build a plan with phases and blocks for this person."

    .line 158
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041c\u043d\u043e\u0433\u043e\u043f\u043b\u0430\u0441\u0442\u043e\u0432\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u2014 \u0437\u0430\u0449\u0438\u0442\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438, \u0431\u0443\u0442\u043e\u043d\u0438 \u0421\u0422\u041e\u041f \u0438 \u041d\u0410\u041c\u0410\u041b\u0418, \u043d\u0438\u043a\u043e\u0433\u0430 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u043d\u0430\u0434 \u043f\u043b\u0430\u043d\u0430."

    const-string v3, "Layered safety \u2014 protective limits, STOP and REDUCE buttons, never an increase above the plan."

    .line 160
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041e\u0431\u044f\u0441\u043d\u044f\u0432\u0430 \u0441\u0435 \u2014 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0430 \u0441\u0435 \u0432\u0438\u0436\u0434\u0430 \u043a\u0430\u043a\u0432\u043e \u043f\u0440\u0430\u0432\u0438 AI \u0438 \u0437\u0430\u0449\u043e."

    const-string v3, "Explains itself \u2014 the screen shows what the AI does and why."

    .line 162
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u041e\u0442\u0447\u0435\u0442 \u0441 \u0440\u0435\u0437\u0443\u043b\u0442\u0430\u0442 \u2014 \u0432\u0440\u0435\u043c\u0435 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u0435\u043d \u043f\u0443\u043b\u0441, \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0438 \u0434\u043e\u0437\u0430; \u0441\u043f\u043e\u0434\u0435\u043b\u044f \u0441\u0435 \u0441 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "A report with results \u2014 time in zone, max heart rate, recovery and dose; shareable with the client."

    .line 163
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u041c\u043e\u0436\u0435 \u0438 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u043e \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0438 \u0431\u0435\u0437 \u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u0434\u043e \u0441\u0435\u0431\u0435 \u0441\u0438, \u043f\u0440\u0438 \u043f\u043e-\u0441\u0442\u0440\u043e\u0433\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438."

    const-string v4, "Works solo too \u2014 the client can train without a trainer next to them, with stricter limits."

    .line 165
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 168
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0414\u043e\u043a\u043e\u0441\u043d\u0438 \u201eAI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c \u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u0446\u0435\u043b \u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442."

    const-string v3, "Tap AI session and pick a goal and duration."

    .line 169
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u043e\u0442\u0432\u044a\u0440\u0434\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e (\u201e\u0411\u0435\u0437 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f, \u0434\u043e\u0431\u0440\u0435 \u0435 \u0434\u043d\u0435\u0441\u201c)."

    const-string v3, "Confirm the client and their health (\"No contraindications, feeling well today\")."

    .line 170
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 30 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430."

    const-string v3, "Resting heart rate \u2014 30 seconds with the band on the wrist."

    .line 172
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u0440\u0435\u0433\u043b\u0435\u0434\u0430\u0439 \u043f\u043b\u0430\u043d\u0430 \u0438 \u043d\u0430\u0433\u043b\u0430\u0441\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u043e \u0441\u043a\u0430\u043b\u0430\u0442\u0430 \u043d\u0430 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e (0\u201310)."

    const-string v3, "Review the plan and set the strength on the feel scale (0\u201310)."

    .line 173
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u201e\u0421\u0442\u0430\u0440\u0442\u201c \u2014 AI \u0432\u043e\u0434\u0438; \u0442\u0438 \u043c\u043e\u0436\u0435\u0448 \u0434\u0430 \u043f\u0430\u0443\u0437\u0438\u0440\u0430\u0448, \u0434\u0430 \u043d\u0430\u043c\u0430\u043b\u0438\u0448 \u0438\u043b\u0438 \u0434\u0430 \u0441\u043f\u0440\u0435\u0448 \u043f\u043e \u0432\u0441\u044f\u043a\u043e \u0432\u0440\u0435\u043c\u0435."

    const-string v3, "Start \u2014 the AI leads; you can pause, reduce or stop at any time."

    .line 175
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u201e\u0417\u0430\u0442\u0432\u043e\u0440\u0438\u201c \u043f\u0440\u0438\u043a\u043b\u044e\u0447\u0432\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0438 \u043e\u0442\u0432\u0430\u0440\u044f \u043e\u0442\u0447\u0435\u0442\u0430 \u0432 \u043a\u043b\u0438\u0435\u043d\u0442\u0441\u043a\u0438\u044f \u043a\u0430\u0440\u0442\u043e\u043d."

    const-string v4, "Close ends the session and opens the report in the client\'s card."

    .line 177
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 180
    :cond_30f
    const-string v1, "vr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a4

    .line 181
    const-string v1, "VR"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 182
    const v1, -0xa39440

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 183
    const-string v1, "VR \u0445\u0430\u043f\u0442\u0438\u043a\u0430"

    const-string v2, "VR haptics"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 184
    const-string v1, "\u0423\u0434\u0430\u0440\u0438\u0442\u0435 \u0432 \u0438\u0433\u0440\u0430\u0442\u0430 \u043d\u0430 Quest 3 \u0441\u0442\u0430\u0432\u0430\u0442 \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0432 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    const-string v2, "Hits in a Quest 3 game become impulses in the suit"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 185
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430-\u0438\u0433\u0440\u0430 \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0431\u043e\u043a\u0441\u0438\u0440\u0430, \u0441\u0435\u0447\u0435 \u0438\u043b\u0438 \u0441\u0442\u0440\u0435\u043b\u044f \u0432\u044a\u0432 VR \u0438 \u0443\u0441\u0435\u0449\u0430 \u0432\u0441\u0435\u043a\u0438 \u0443\u0434\u0430\u0440 \u0441 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435."

    const-string v3, "A training game \u2014 the client boxes, slices or shoots in VR and feels every hit in the muscles."

    .line 186
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u0411\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0435 \u043c\u0438\u043d\u0430\u0432\u0430 \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430 \u0438 \u0430\u0431\u0441\u043e\u043b\u044e\u0442\u043d\u0438\u0442\u0435 \u0433\u0440\u0430\u043d\u0438\u0446\u0438 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v3, "Safe \u2014 the strength never goes above the trainer\'s ceiling and the suit\'s absolute limits."

    .line 188
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0421\u0430\u043c\u043e \u0438\u0441\u0442\u0438\u043d\u0441\u043a\u0438\u0442\u0435 \u0443\u0434\u0430\u0440\u0438 \u2014 \u0449\u0440\u0430\u043a\u0432\u0430\u043d\u0438\u044f \u0432 \u043c\u0435\u043d\u044e\u0442\u0430 \u0438 \u0444\u043e\u043d\u043e\u0432\u043e \u0431\u0440\u044a\u043c\u0447\u0435\u043d\u0435 \u0441\u0435 \u043e\u0442\u0440\u044f\u0437\u0432\u0430\u0442; \u043a\u043e\u043b\u043a\u043e \u0441\u0442\u0440\u043e\u0433\u043e \u0440\u0435\u0448\u0430\u0432\u0430\u0448 \u0442\u0438."

    const-string v3, "Only the real hits \u2014 menu clicks and background rumble are dropped; you decide how strictly."

    .line 190
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u0443\u043c\u043e\u0440\u0430 \u2014 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0438 \u0433\u0440\u0443\u043f\u0438 \u043f\u043e\u0447\u0438\u0432\u0430\u0442, \u0434\u043e\u043a\u0430\u0442\u043e \u0438\u0433\u0440\u0430\u0442\u0430 \u0432\u043e\u0434\u0438 \u0441\u0438\u043b\u0430\u0442\u0430."

    const-string v3, "Less fatigue \u2014 the chosen muscle groups rest while the game drives the strength."

    .line 192
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 195
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0412\u0435\u0434\u043d\u044a\u0436: \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u0438 \u0438\u0433\u0440\u0430\u0442\u0430 \u0441 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e XEMS VR (Termux) \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430."

    const-string v3, "Once: prepare the game with the XEMS VR app (Termux) on the tablet."

    .line 196
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041e\u0442\u0432\u043e\u0440\u0438 \u201e\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c, \u0434\u043e\u0431\u0430\u0432\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438 \u0437\u0430\u0434\u0430\u0439 \u0441\u0438\u043b\u0430\u0442\u0430 \u2014 \u0442\u044f \u0435 \u0442\u0430\u0432\u0430\u043d\u044a\u0442."

    const-string v3, "Open Training, add the client and set the strength \u2014 it is the ceiling."

    .line 198
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0443\u0441\u043d\u0438 \u0438\u0433\u0440\u0430\u0442\u0430 \u0432 \u0448\u043b\u0435\u043c\u0430 \u2014 \u043f\u043b\u043e\u0447\u043a\u0430\u0442\u0430 \u201eVR\u201c \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u201e\u25cf \u0438\u0433\u0440\u0430\u201c."

    const-string v3, "Start the game on the headset \u2014 the VR tile shows \"\u25cf game\"."

    .line 200
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041f\u0443\u0441\u043d\u0438 \u0440\u0435\u0434\u0430 \u2014 \u0443\u0434\u0430\u0440\u0438\u0442\u0435 \u0432 \u0438\u0433\u0440\u0430\u0442\u0430 \u0434\u0432\u0438\u0436\u0430\u0442 \u0441\u0438\u043b\u0430\u0442\u0430."

    const-string v3, "Start the row \u2014 hits in the game move the strength."

    .line 201
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "\u201e\u041a\u043e\u0438 \u0443\u0434\u0430\u0440\u0438 \u043c\u0438\u043d\u0430\u0432\u0430\u0442\u201c: \u201e\u0421\u0430\u043c\u043e \u0441\u0438\u043b\u043d\u0438\u201c \u043f\u0440\u0438 \u043c\u043d\u043e\u0433\u043e \u0448\u0443\u043c, \u201e\u0412\u0441\u0438\u0447\u043a\u0438\u201c \u043f\u0440\u0438 \u0442\u0438\u0445\u0438 \u0438\u0433\u0440\u0438."

    const-string v3, "Which hits pass: Strong only for noisy games, All for quiet ones."

    .line 202
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u201e\u041d\u0430\u0439-\u0441\u043b\u0430\u0431 \u0443\u0434\u0430\u0440\u201c \u0432\u0434\u0438\u0433\u0430 \u0441\u043b\u0430\u0431\u0438\u0442\u0435 \u0443\u0434\u0430\u0440\u0438; \u201e\u041d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435\u201c \u0433\u0438 \u043e\u043c\u0435\u043a\u043e\u0442\u044f\u0432\u0430."

    const-string v4, "Weakest hit lifts the faint hits; Rise softens them."

    .line 204
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c

    .line 208
    :cond_3a4
    const-string v1, "\u231a"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->glyph:Ljava/lang/String;

    .line 209
    const v1, -0xbd5a0b

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tint:I

    .line 210
    const-string v1, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "Band"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->name:Ljava/lang/String;

    .line 211
    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0432 \u0440\u044a\u043a\u0430\u0442\u0430 \u0442\u0438"

    const-string v2, "The training on your wrist"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->tagline:Ljava/lang/String;

    .line 212
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "\u0421\u0432\u043e\u0431\u043e\u0434\u0430 \u043e\u0442 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u2014 \u0441\u0442\u0430\u0440\u0442, \u043f\u0430\u0443\u0437\u0430 \u0438 \u0441\u0438\u043b\u0430 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u0441\u0438 \u0434\u043e \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "Free from the tablet \u2014 start, pause and strength from the band while you are next to the client."

    .line 213
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u043f\u0443\u043b\u0441, \u0442\u0430\u0439\u043c\u0435\u0440, \u043c\u0443\u0437\u0438\u043a\u0430, AI \u0438 \u043e\u0431\u043e\u0431\u0449\u0435\u043d\u0438\u0435 \u0441\u043b\u0435\u0434 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043d\u0430 \u043a\u0438\u0442\u043a\u0430\u0442\u0430."

    const-string v3, "The XEMS app on the band \u2014 heart rate, timer, music, AI and the session summary on the wrist."

    .line 215
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u0420\u0430\u0431\u043e\u0442\u0438 \u0438 \u0431\u0435\u0437 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435 \u2014 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0438\u044f\u0442 \u0435\u043a\u0440\u0430\u043d \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0442\u0430\u0432\u0430 \u0434\u0438\u0441\u0442\u0430\u043d\u0446\u0438\u043e\u043d\u043d\u043e \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v3, "Works without installing too \u2014 the band\'s music screen becomes the training remote."

    .line 217
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "Xiaomi Smart Band 8, 9 \u0438 10."

    const-string v3, "Xiaomi Smart Band 8, 9 and 10."

    .line 219
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->value:[Ljava/lang/String;

    .line 221
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430: \u0438\u0437\u0431\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0438 \u0432\u044a\u0432\u0435\u0434\u0438 \u043a\u043b\u044e\u0447\u0430 \u045d \u0432\u0435\u0434\u043d\u044a\u0436."

    const-string v3, "Settings \u2192 Band: pick the band and enter its key once."

    .line 222
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041e\u0442 \u0441\u044a\u0449\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430."

    const-string v3, "Install the XEMS app on the band from the same screen."

    .line 223
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "\u041f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u0441\u0430\u043c\u043e."

    const-string v3, "At the start of a session the band app opens by itself."

    .line 224
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "\u041e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430: \u0441\u0442\u0430\u0440\u0442 \u0438 \u043f\u0430\u0443\u0437\u0430, \u0441\u0438\u043b\u0430 + \u0438 \u2212."

    const-string v3, "On the band: start and pause, strength + and \u2212."

    .line 225
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;->how:[Ljava/lang/String;

    goto/16 :goto_9c
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

    .line 376
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 378
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

    .line 379
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 233
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 241
    :cond_4
    :goto_4
    return-void

    .line 237
    :cond_5
    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->build(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_4

    .line 238
    :catch_9
    move-exception v0

    .line 239
    const-string v1, "XemsModuleInfo.show"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static stagger(Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 361
    move v2, v3

    move v4, v3

    .line 362
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3e

    .line 363
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 364
    instance-of v0, v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_37

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_37

    .line 365
    check-cast v1, Landroid/widget/LinearLayout;

    move v0, v3

    .line 366
    :goto_1e
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_31

    .line 367
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int/lit8 v5, v4, 0x1

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->rise(Landroid/view/View;I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_1e

    :cond_31
    move v1, v4

    .line 362
    :goto_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_3

    .line 370
    :cond_37
    add-int/lit8 v0, v4, 0x1

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->rise(Landroid/view/View;I)V

    move v1, v0

    goto :goto_32

    .line 373
    :cond_3e
    return-void
.end method

.method private static stepRow(Landroid/app/Activity;ILjava/lang/String;I)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 340
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 341
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 342
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 343
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 344
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 345
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 346
    invoke-virtual {v2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 347
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 349
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 351
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 352
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 353
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 354
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    return-object v0
.end method

.method public static subscribe(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 386
    if-nez p0, :cond_3

    .line 411
    :goto_2
    return-void

    .line 390
    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->entry(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsModuleInfo$Entry;

    move-result-object v0

    .line 391
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

    .line 392
    const-string v1, "\u0426\u0435\u043d\u0438\u0442\u0435 \u0438 \u043f\u043b\u0430\u0449\u0430\u043d\u0435\u0442\u043e \u0438\u0434\u0432\u0430\u0442 \u0441\u044a\u0432\u0441\u0435\u043c \u0441\u043a\u043e\u0440\u043e \u2014 \u0442\u0443\u043a, \u0441 \u0435\u0434\u043d\u043e \u0434\u043e\u043a\u043e\u0441\u0432\u0430\u043d\u0435."

    const-string v2, "Prices and payment are coming very soon \u2014 right here, in one tap."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 394
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 395
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    const-string v1, "\u0418\u043c\u0430\u0448 \u043a\u043b\u044e\u0447 \u0437\u0430 \u0434\u043e\u0441\u0442\u044a\u043f? \u0412\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437 \u0438 \u043c\u043e\u0434\u0443\u043b\u044a\u0442 \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430 \u0432\u0435\u0434\u043d\u0430\u0433\u0430."

    const-string v2, "Have an access key? Enter it in Settings \u2192 Access & license and the module unlocks at once."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 398
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 399
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
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

    .line 401
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v3, 0xe

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    const-string v1, "\u0420\u0430\u0437\u0431\u0440\u0430\u0445"

    const-string v2, "Got it"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 403
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v3, v4, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 406
    const v1, 0x3f666666    # 0.9f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 407
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->stagger(Landroid/widget/LinearLayout;)V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d2} :catch_d4

    goto/16 :goto_2

    .line 408
    :catch_d4
    move-exception v0

    .line 409
    const-string v1, "XemsModuleInfo.subscribe"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 415
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    .line 417
    :goto_4
    return-object p0

    .line 416
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

    .line 311
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 312
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 313
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 314
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 315
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

    .line 316
    const-string v1, "\u2713"

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v1, v2, p2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 317
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 319
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 320
    const/16 v3, 0x2e

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 321
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 323
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const-string v1, ""

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 325
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 326
    const-string v2, " \u2014 "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 327
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 328
    if-lez v2, :cond_87

    .line 329
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 331
    :cond_87
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 333
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 334
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-object v0
.end method
