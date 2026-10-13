.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;
.implements Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Listener;
.implements Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Page"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field barDone:Landroid/view/View;

.field barLeft:Landroid/view/View;

.field clock:Landroid/widget/TextView;

.field clockLabel:Landroid/widget/TextView;

.field closed:Z

.field empty:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/TextView;

.field finished:Z

.field go:Landroid/widget/TextView;

.field goStyle:I

.field hint:Landroid/widget/TextView;

.field hintText:Ljava/lang/String;

.field lengthMs:J

.field final main:Landroid/os/Handler;

.field mine:Z

.field mineId:Ljava/lang/String;

.field minuteBox:Landroid/widget/LinearLayout;

.field minuteRow:Landroid/widget/LinearLayout;

.field minutes:I

.field padRow:Landroid/widget/LinearLayout;

.field final pads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;",
            ">;"
        }
    .end annotation
.end field

.field final prefs:Landroid/content/SharedPreferences;

.field program:I

.field programList:Landroid/widget/LinearLayout;

.field running:Z

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

.field final skip:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field startedAt:J

.field tabHolder:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 108
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_bluetens"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "program"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mine"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mine_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method static find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 264
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static summary(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 273
    const/16 v3, 0x3e7

    .line 274
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 275
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 276
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 277
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 278
    goto :goto_b

    .line 279
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v3, v2, :cond_4f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u2013"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method


# virtual methods
.method clockCard()Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v6, 0x0

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 365
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 366
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x42500000    # 52.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    .line 367
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 368
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    .line 370
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 371
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 373
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 374
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    .line 376
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    .line 378
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    return-object v0
.end method

.method currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 3

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-nez v0, :cond_d

    .line 337
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    .line 340
    :goto_c
    return-object v0

    .line 339
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    goto :goto_c
.end method

.method currentName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-nez v0, :cond_f

    .line 345
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_e
    return-object v0

    .line 347
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    goto :goto_e

    :cond_1c
    const-string v0, ""

    goto :goto_e
.end method

.method dismissed()V
    .registers 5

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    .line 755
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_c

    .line 756
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 758
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 759
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v2, :cond_12

    .line 760
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_12

    .line 763
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;-><init>(Ljava/util/List;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 764
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method editMine(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 312
    :cond_4
    :goto_4
    return-void

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_4

    .line 310
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    goto :goto_4
.end method

.method edited(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V
    .registers 5

    .prologue
    .line 325
    if-eqz p1, :cond_17

    .line 326
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine_id"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 330
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 331
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 332
    return-void
.end method

.method emptyCard()Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 387
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 388
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41900000    # 18.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    .line 389
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441 \u0431\u0443\u0442\u043e\u043d\u0430 \u043c\u0443. Duo \u2014 \u0432\u043a\u043b\u044e\u0447\u0438 \u0438 \u0434\u0432\u0435\u0442\u0435."

    const-string v3, "Switch the pad on with its button. Duo \u2014 switch on both."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 393
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 394
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    return-object v0
.end method

.method fillMine()V
    .registers 13

    .prologue
    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    if-nez v0, :cond_18

    .line 219
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_158

    const-string v0, ""

    :goto_16
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 221
    :cond_18
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 222
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 223
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 224
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 225
    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 226
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v9

    invoke-virtual {v7, v1, v2, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 227
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v2, v1

    .line 228
    if-eqz v6, :cond_163

    const/16 v1, 0x26

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/16 v8, 0xcc

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v9

    invoke-static {v1, v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    :goto_77
    invoke-static {v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 231
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 233
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 234
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16c

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    move-object v2, v1

    :goto_a2
    const/high16 v10, 0x41800000    # 16.0f

    .line 235
    if-eqz v6, :cond_177

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_a8
    const/4 v11, 0x1

    .line 234
    invoke-static {v9, v2, v10, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->seconds()I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->time(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 237
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17b

    const-string v1, " \u0441\u0442\u044a\u043f\u043a\u0430"

    :goto_de
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_17f

    const-string v2, " step"

    :goto_e9
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->summary(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    .line 236
    invoke-static {v9, v1, v2, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u270e"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x30

    invoke-static {v1, v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 241
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_183

    const/4 v0, 0x1

    :goto_138
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 243
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_185

    if-nez v6, :cond_185

    const v0, 0x3ecccccd    # 0.4f

    :goto_147
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1e

    .line 219
    :cond_158
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    goto/16 :goto_16

    .line 229
    :cond_163
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_77

    .line 234
    :cond_16c
    const-string v1, "\u0411\u0435\u0437 \u0438\u043c\u0435"

    const-string v2, "Untitled"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_a2

    .line 235
    :cond_177
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_a8

    .line 237
    :cond_17b
    const-string v1, " \u0441\u0442\u044a\u043f\u043a\u0438"

    goto/16 :goto_de

    :cond_17f
    const-string v2, " steps"

    goto/16 :goto_e9

    .line 242
    :cond_183
    const/4 v0, 0x0

    goto :goto_138

    .line 244
    :cond_185
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_147

    .line 247
    :cond_188
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430\u0448 \u0441\u0432\u043e\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438. \u041d\u0430\u043f\u0440\u0430\u0432\u0438 \u043f\u044a\u0440\u0432\u0430\u0442\u0430: \u0442\u0438 \u0437\u0430\u0434\u0430\u0432\u0430\u0448 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430, \u0438\u043c\u043f\u0443\u043b\u0441\u0430, \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0438 \u0432\u0440\u0435\u043c\u0435\u0442\u043e."

    const-string v2, "No programs of your own yet. Make the first: you set the frequency, pulse, pauses and time."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 251
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 252
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    :cond_1c1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v0, "\uff0b  \u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "\uff0b  New program"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1fe

    const/4 v0, 0x0

    .line 254
    :goto_1d2
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 256
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_200

    const/4 v0, 0x1

    :goto_1e3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 258
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_202

    const v0, 0x3ecccccd    # 0.4f

    :goto_1ed
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 259
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    return-void

    .line 255
    :cond_1fe
    const/4 v0, 0x2

    goto :goto_1d2

    .line 257
    :cond_200
    const/4 v0, 0x0

    goto :goto_1e3

    .line 258
    :cond_202
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1ed
.end method

.method fillMinutes()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 353
    sget-object v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->MINUTES:[I

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_63

    aget v5, v3, v2

    .line 354
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-ne v5, v0, :cond_5e

    const/4 v0, 0x1

    :goto_2e
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {v6, v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v6

    .line 355
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;

    invoke-direct {v0, p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-eq v5, v0, :cond_60

    const v0, 0x3ecccccd    # 0.4f

    :goto_47
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 357
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 358
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 353
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_5e
    move v0, v1

    .line 354
    goto :goto_2e

    .line 356
    :cond_60
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_47

    .line 360
    :cond_63
    return-void
.end method

.method fillPrograms()V
    .registers 14

    .prologue
    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 176
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u0438"

    const-string v4, "Ready"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "\u041c\u043e\u0438 \u00b7 \u0440\u044a\u0447\u043d\u043e"

    const-string v4, "Mine \u00b7 manual"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 177
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    :goto_25
    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    .line 176
    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 178
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_57

    const v0, 0x3ecccccd    # 0.4f

    :goto_35
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_5a

    const/16 v0, 0x8

    :goto_4a
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_5c

    .line 183
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMine()V

    .line 213
    :cond_54
    return-void

    .line 177
    :cond_55
    const/4 v0, 0x0

    goto :goto_25

    .line 178
    :cond_57
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_35

    .line 181
    :cond_5a
    const/4 v0, 0x0

    goto :goto_4a

    .line 186
    :cond_5c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v4

    .line 187
    sget-object v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->ALL:[I

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_65
    if-ge v3, v6, :cond_54

    aget v7, v5, v3

    .line 188
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne v7, v0, :cond_163

    const/4 v0, 0x1

    .line 189
    :goto_6e
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->tint(I)I

    move-result v2

    .line 190
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 191
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 192
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-virtual {v8, v1, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v9, v1

    .line 194
    if-eqz v0, :cond_166

    const/16 v1, 0x26

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/16 v10, 0xcc

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v10

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-static {v1, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    :goto_b7
    invoke-static {v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 197
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;

    invoke-direct {v1, p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 199
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    if-eqz v0, :cond_16f

    const-string v1, "\u2713"

    :goto_d3
    const/high16 v10, 0x41600000    # 14.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v12, 0x1

    invoke-static {v9, v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 200
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    if-eqz v0, :cond_173

    move v1, v2

    :goto_e4
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x41d00000    # 26.0f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 204
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v0, :cond_17b

    :goto_118
    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->feel(IZ)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {v2, v7, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 208
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 209
    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v1, :cond_17e

    if-nez v0, :cond_17e

    const v0, 0x3ecccccd    # 0.4f

    :goto_14f
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_65

    .line 188
    :cond_163
    const/4 v0, 0x0

    goto/16 :goto_6e

    .line 195
    :cond_166
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_b7

    .line 199
    :cond_16f
    const-string v1, ""

    goto/16 :goto_d3

    .line 201
    :cond_173
    const/16 v1, 0x55

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto/16 :goto_e4

    .line 204
    :cond_17b
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_118

    .line 210
    :cond_17e
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_14f
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 593
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 594
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    if-ne v2, p1, :cond_6

    .line 598
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 602
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 603
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    if-ne v2, p1, :cond_6

    .line 607
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method go()V
    .registers 7

    .prologue
    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 638
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_21

    .line 639
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 640
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_d

    .line 644
    :cond_21
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v2

    .line 645
    if-nez v2, :cond_28

    .line 659
    :cond_27
    :goto_27
    return-void

    .line 648
    :cond_28
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v3

    .line 650
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_62

    const-string v0, "XMINE"

    move-object v1, v0

    .line 651
    :goto_37
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 653
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 654
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_47

    .line 655
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0, v1, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->start(Ljava/lang/String;[B)V

    goto :goto_47

    .line 650
    :cond_62
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fileName(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_37

    .line 658
    :cond_6c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_27
.end method

.method leftColumn()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    .line 163
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    .line 165
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    .line 167
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u041c\u0438\u043d\u0443\u0442\u0438"

    const-string v4, "Minutes"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    .line 169
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    return-object v0
.end method

.method newMine()V
    .registers 6

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 322
    :goto_4
    return-void

    .line 318
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 319
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->newId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041c\u043e\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 "

    const-string v4, "My program "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->fresh(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 321
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    goto :goto_4
.end method

.method public onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 745
    const-string v0, "str"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "bat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 746
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u043d\u0435 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The pad did not answer \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 748
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 749
    return-void
.end method

.method public onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V
    .registers 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 687
    return-void
.end method

.method public onLinkState(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;I)V
    .registers 5

    .prologue
    .line 573
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->notPad:Z

    if-eqz v0, :cond_29

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 576
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->close()V

    .line 577
    if-eqz v0, :cond_20

    .line 578
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 579
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 581
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_29

    .line 582
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    .line 585
    :cond_29
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3a

    .line 586
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0432\u044a\u0440\u043d\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e, \u0430\u043a\u043e \u0435 \u0441\u043f\u0440\u044f\u043b\u043e."

    const-string v1, "The pad is back \u2014 start again if it stopped."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 589
    :cond_3a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 590
    return-void
.end method

.method public onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V
    .registers 7

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 721
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 722
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 724
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    .line 725
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 736
    return-void

    .line 726
    :cond_2a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_38

    .line 727
    const-string v0, "\u0411\u0430\u0442\u0435\u0440\u0438\u044f\u0442\u0430 \u0441\u0432\u044a\u0440\u0448\u0438 \u2014 \u0437\u0430\u0440\u0435\u0434\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e."

    const-string v1, "Battery empty \u2014 charge the pad."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 728
    :cond_38
    const/4 v0, 0x3

    if-ne p2, v0, :cond_46

    .line 729
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438."

    const-string v1, "The pad switched off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 730
    :cond_46
    const/4 v0, 0x4

    if-ne p2, v0, :cond_54

    .line 731
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u043f\u0440\u044f \u0441 \u0433\u0440\u0435\u0448\u043a\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e."

    const-string v1, "The pad stopped with an error \u2014 start again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 732
    :cond_54
    const/4 v0, 0x5

    if-ne p2, v0, :cond_26

    .line 733
    const-string v0, "\u041f\u0430\u043c\u0435\u0442\u0442\u0430 \u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0435 \u043f\u044a\u043b\u043d\u0430."

    const-string v1, "The pad\'s memory is full."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26
.end method

.method public onPad(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 546
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v8, :cond_22

    .line 569
    :cond_21
    :goto_21
    return-void

    .line 549
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 550
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_21

    .line 554
    :cond_43
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_9b

    move v3, v4

    :goto_4c
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_9d

    :goto_50
    move-object v2, p1

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZZLcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Listener;)V

    .line 556
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padCard(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v1

    .line 557
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 559
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_77

    .line 560
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 562
    :cond_77
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 564
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_94

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v1, :cond_94

    .line 565
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 567
    :cond_94
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->connect()V

    .line 568
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_21

    :cond_9b
    move v3, v7

    .line 554
    goto :goto_4c

    :cond_9d
    move v4, v7

    goto :goto_50
.end method

.method public onRunning(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 699
    .line 700
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 701
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    or-int/2addr v0, v1

    move v1, v0

    .line 702
    goto :goto_9

    .line 703
    :cond_1e
    if-eqz v1, :cond_42

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_42

    .line 704
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    .line 706
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 707
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 708
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 716
    return-void

    .line 709
    :cond_42
    if-nez v1, :cond_3e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3e

    .line 710
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    const-wide/16 v6, 0x1388

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-ltz v0, :cond_5b

    move v2, v3

    :cond_5b
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 712
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 713
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    goto :goto_3e
.end method

.method public onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V
    .registers 6

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_13

    .line 693
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v1, :cond_14

    :goto_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :cond_13
    return-void

    .line 693
    :cond_14
    const/4 p2, 0x0

    goto :goto_c
.end method

.method public onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V
    .registers 3

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 741
    return-void
.end method

.method padCard(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 13

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 400
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;-><init>()V

    .line 401
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 402
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    .line 403
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 404
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 405
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    .line 406
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    .line 408
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    .line 411
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    .line 414
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 415
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    .line 416
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "+"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    .line 417
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 418
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    invoke-static {v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 419
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 421
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "0"

    const/high16 v4, 0x42700000    # 60.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    .line 422
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 423
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 424
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0441\u0438\u043b\u0430 \u043e\u0442 60"

    const-string v4, "strength of 60"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 426
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 427
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u26a0 \u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u2014 \u043d\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442 \u0434\u043e\u0431\u0440\u0435"

    const-string v3, "\u26a0 Check the electrodes \u2014 poor contact"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41580000    # 13.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v1, v2, v3, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    .line 435
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 436
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v3, 0x22

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    return-object v0
.end method

.method pickMine(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 302
    :cond_c
    :goto_c
    return-void

    .line 297
    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 300
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 301
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_c
.end method

.method pickMinutes(I)V
    .registers 5

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-ne p1, v0, :cond_9

    .line 634
    :cond_8
    :goto_8
    return-void

    .line 629
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 630
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 632
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 633
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8
.end method

.method pickProgram(I)V
    .registers 5

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne p1, v0, :cond_9

    .line 623
    :cond_8
    :goto_8
    return-void

    .line 616
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 617
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 618
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "program"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 620
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 621
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 622
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8
.end method

.method render()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_c

    .line 500
    :goto_b
    return-void

    .line 448
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    .line 449
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_e3

    const/4 v0, 0x0

    move-object v1, v0

    .line 450
    :goto_15
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_ea

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v10, v12

    sub-long/2addr v2, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 452
    :goto_27
    const-wide/16 v10, 0x3e7

    add-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    .line 453
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "%d:%02d"

    new-array v11, v14, [Ljava/lang/Object;

    const-wide/16 v12, 0x3c

    div-long v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v6

    const-wide/16 v12, 0x3c

    rem-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v7

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_f6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u00b7 "

    const-string v9, "left \u00b7 "

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_72
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v0, :cond_10a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_10a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_81
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_10e

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_10e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v2, v0

    .line 458
    :goto_9f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v2, v8, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 460
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    move v2, v6

    move v3, v6

    move v4, v6

    .line 464
    :goto_bd
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_111

    .line 465
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 466
    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 467
    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v5, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v5, v14, :cond_d8

    .line 468
    add-int/lit8 v4, v4, 0x1

    .line 470
    :cond_d8
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    or-int/2addr v3, v0

    .line 464
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_bd

    .line 449
    :cond_e3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_15

    .line 451
    :cond_ea
    if-eqz v1, :cond_f3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v2

    double-to-long v2, v2

    goto/16 :goto_27

    :cond_f3
    move-wide v2, v4

    goto/16 :goto_27

    .line 455
    :cond_f6
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v0, :cond_104

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2713"

    const-string v3, "Done \u2713"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    :cond_104
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    .line 456
    :cond_10a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_81

    .line 457
    :cond_10e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_9f

    .line 472
    :cond_111
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_186

    move v0, v6

    :goto_11c
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-nez v0, :cond_189

    const-string v0, "Bluetooth \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v5, "Bluetooth is off"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_192

    const-string v0, "\u25a0  \u0421\u043f\u0440\u0438"

    const-string v5, "\u25a0  Stop"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_19b

    const/4 v0, 0x4

    .line 478
    :goto_146
    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    if-eq v0, v2, :cond_15d

    .line 479
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 480
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v9, ""

    invoke-static {v5, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    :cond_15d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_165

    if-lez v4, :cond_19d

    if-eqz v1, :cond_19d

    :cond_165
    move v0, v7

    .line 483
    :goto_166
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v0, :cond_19f

    if-nez v3, :cond_19f

    :goto_16c
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 484
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v0, :cond_1a1

    if-nez v3, :cond_1a1

    move v0, v8

    :goto_176
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_1a5

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 499
    :goto_17f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 472
    :cond_186
    const/16 v0, 0x8

    goto :goto_11c

    .line 474
    :cond_189
    const-string v0, "\u0422\u044a\u0440\u0441\u044f Bluetens\u2026"

    const-string v5, "Looking for Bluetens\u2026"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12d

    .line 476
    :cond_192
    const-string v0, "\u25b6  \u041f\u0443\u0441\u043d\u0438"

    const-string v5, "\u25b6  Start"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13e

    :cond_19b
    move v0, v6

    .line 477
    goto :goto_146

    :cond_19d
    move v0, v6

    .line 482
    goto :goto_166

    :cond_19f
    move v7, v6

    .line 483
    goto :goto_16c

    .line 484
    :cond_1a1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_176

    .line 488
    :cond_1a5
    if-eqz v3, :cond_1b0

    .line 489
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u043c \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0432 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e\u2026"

    const-string v1, "Sending the program to the pad\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17f

    .line 490
    :cond_1b0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_1bd

    .line 491
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0441\u0438\u043b\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u0435 \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u2014 \u043d\u0435 \u0434\u043e \u0431\u043e\u043b\u043a\u0430."

    const-string v1, "Raise the strength until it feels good \u2014 never to pain."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17f

    .line 492
    :cond_1bd
    if-nez v1, :cond_1c8

    .line 493
    const-string v0, "\u041d\u0430\u043f\u0440\u0430\u0432\u0438 \u0441\u0432\u043e\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441 \uff0b \u0438\u043b\u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u043e\u0442 \u201e\u0413\u043e\u0442\u043e\u0432\u0438\u201c."

    const-string v1, "Make a program with \uff0b or pick a ready one."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17f

    .line 494
    :cond_1c8
    if-nez v4, :cond_1de

    .line 495
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d5

    const-string v0, ""

    goto :goto_17f

    :cond_1d5
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17f

    .line 497
    :cond_1de
    const-string v0, "\u0421\u043b\u043e\u0436\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0438 \u043f\u0443\u0441\u043d\u0438. \u0421\u0438\u043b\u0430\u0442\u0430 \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 1."

    const-string v1, "Place the electrodes and start. Strength starts at 1."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17f
.end method

.method renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 503
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 504
    iget-object v6, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 505
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_b1

    move v0, v1

    .line 506
    :goto_10
    iget-boolean v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->duo:Z

    if-eqz v3, :cond_b4

    const-string v3, "Duo"

    .line 507
    :goto_16
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_33
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryPct()I

    move-result v3

    .line 509
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    if-ltz v3, :cond_b8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u25ae "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " %"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_57
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    if-ltz v3, :cond_bb

    const/16 v0, 0x19

    if-gt v3, v0, :cond_bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_64
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 513
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v3, v8, :cond_c7

    .line 514
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_be

    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0438 \u25cf"

    const-string v3, "Running \u25cf"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    :goto_79
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move-object v4, v0

    .line 522
    :goto_7c
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e2

    iget v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    :goto_8e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e4

    iget v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v8, :cond_e4

    .line 526
    :goto_9d
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e6

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a3
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 527
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 528
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 529
    return-void

    :cond_b1
    move v0, v2

    .line 505
    goto/16 :goto_10

    .line 506
    :cond_b4
    const-string v3, "Bluetens"

    goto/16 :goto_16

    .line 509
    :cond_b8
    const-string v0, ""

    goto :goto_57

    .line 510
    :cond_bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_64

    .line 514
    :cond_be
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0430\u043d \u2713"

    const-string v3, "Connected \u2713"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 516
    :cond_c7
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d8

    .line 517
    const-string v0, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0430\u0434\u043d\u0430 \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v3, "Link lost \u2014 reconnecting"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move v3, v0

    goto :goto_7c

    .line 520
    :cond_d8
    const-string v3, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v4, "Connecting\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v3, v0

    goto :goto_7c

    :cond_e2
    move v0, v2

    .line 524
    goto :goto_8e

    :cond_e4
    move v1, v2

    .line 525
    goto :goto_9d

    .line 526
    :cond_e6
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_a3
.end method

.method setTab(I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 283
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_d

    if-ne p1, v1, :cond_e

    move v0, v1

    :goto_9
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-ne v0, v3, :cond_10

    .line 291
    :cond_d
    :goto_d
    return-void

    :cond_e
    move v0, v2

    .line 283
    goto :goto_9

    .line 286
    :cond_10
    if-ne p1, v1, :cond_2e

    :goto_12
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 289
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 290
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_d

    :cond_2e
    move v1, v2

    .line 286
    goto :goto_12
.end method

.method show()V
    .registers 10

    .prologue
    const/16 v8, 0xe

    const/4 v7, -0x2

    const/high16 v6, 0x42600000    # 56.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "Bluetens"

    const-string v2, "\u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f \u0441 Bluetens \u2014 \u043e\u0442\u0434\u0435\u043b\u043d\u043e \u043e\u0442 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    const-string v3, "Bluetens stimulation \u2014 apart from the suit"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->leftColumn()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 133
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3fc66666    # 1.55f

    invoke-direct {v2, v4, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 134
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    .line 138
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    .line 140
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 150
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 153
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 154
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method startScan()V
    .registers 2

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 542
    :goto_4
    return-void

    .line 537
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 538
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    move-result v0

    if-nez v0, :cond_17

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 541
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_4
.end method

.method step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 7

    .prologue
    .line 662
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 663
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-nez v1, :cond_9

    .line 672
    :cond_8
    :goto_8
    return-void

    .line 666
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x3c

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 667
    iget v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    if-eq v1, v2, :cond_8

    .line 668
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 669
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength(I)V

    .line 670
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method tick()V
    .registers 5

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_9

    .line 680
    :cond_8
    :goto_8
    return-void

    .line 678
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 679
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method
