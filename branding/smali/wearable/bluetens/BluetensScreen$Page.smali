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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 102
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_bluetens"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "program"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 106
    return-void
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

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 208
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 209
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x42500000    # 52.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    .line 210
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 211
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    .line 213
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 214
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 217
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    .line 219
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    .line 221
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-object v0
.end method

.method dismissed()V
    .registers 5

    .prologue
    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    .line 591
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_c

    .line 592
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 594
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

    .line 595
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v2, :cond_12

    .line 596
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_12

    .line 599
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;-><init>(Ljava/util/List;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method emptyCard()Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 230
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 231
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41900000    # 18.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    .line 232
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441 \u0431\u0443\u0442\u043e\u043d\u0430 \u043c\u0443. Duo \u2014 \u0432\u043a\u043b\u044e\u0447\u0438 \u0438 \u0434\u0432\u0435\u0442\u0435."

    const-string v3, "Switch the pad on with its button. Duo \u2014 switch on both."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 237
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    return-object v0
.end method

.method fillMinutes()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 196
    sget-object v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->MINUTES:[I

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_63

    aget v5, v3, v2

    .line 197
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

    .line 198
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;

    invoke-direct {v0, p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-eq v5, v0, :cond_60

    const v0, 0x3ecccccd    # 0.4f

    :goto_47
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 200
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 196
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_5e
    move v0, v1

    .line 197
    goto :goto_2e

    .line 199
    :cond_60
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_47

    .line 203
    :cond_63
    return-void
.end method

.method fillPrograms()V
    .registers 14

    .prologue
    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v4

    .line 166
    sget-object v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->ALL:[I

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_e
    if-ge v3, v6, :cond_12a

    aget v7, v5, v3

    .line 167
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne v7, v0, :cond_10c

    const/4 v0, 0x1

    .line 168
    :goto_17
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->tint(I)I

    move-result v2

    .line 169
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 170
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 171
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

    .line 172
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v9, v1

    .line 173
    if-eqz v0, :cond_10f

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

    :goto_60
    invoke-static {v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 176
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;

    invoke-direct {v1, p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 178
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    if-eqz v0, :cond_118

    const-string v1, "\u2713"

    :goto_7c
    const/high16 v10, 0x41600000    # 14.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v12, 0x1

    invoke-static {v9, v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 179
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    if-eqz v0, :cond_11c

    move v1, v2

    :goto_8d
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x41d00000    # 26.0f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 183
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v0, :cond_124

    :goto_c1
    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->feel(IZ)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {v2, v7, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 187
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 188
    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v1, :cond_127

    if-nez v0, :cond_127

    const v0, 0x3ecccccd    # 0.4f

    :goto_f8
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_e

    .line 167
    :cond_10c
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 174
    :cond_10f
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_60

    .line 178
    :cond_118
    const-string v1, ""

    goto/16 :goto_7c

    .line 180
    :cond_11c
    const/16 v1, 0x55

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto/16 :goto_8d

    .line 183
    :cond_124
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_c1

    .line 189
    :cond_127
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f8

    .line 192
    :cond_12a
    return-void
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 433
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

    .line 434
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    if-ne v2, p1, :cond_6

    .line 438
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 442
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

    .line 443
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    if-ne v2, p1, :cond_6

    .line 447
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method go()V
    .registers 7

    .prologue
    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 478
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_21

    .line 479
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 480
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_d

    .line 484
    :cond_21
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v1

    .line 486
    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fileName(II)Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 489
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 490
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    .line 491
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0, v2, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->start(Ljava/lang/String;[B)V

    goto :goto_49

    .line 494
    :cond_64
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 495
    :cond_67
    return-void
.end method

.method leftColumn()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v3, "Program"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    .line 156
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041c\u0438\u043d\u0443\u0442\u0438"

    const-string v3, "Minutes"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    .line 159
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    return-object v0
.end method

.method public onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 581
    const-string v0, "str"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "bat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 582
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u043d\u0435 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The pad did not answer \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 584
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 585
    return-void
.end method

.method public onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V
    .registers 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 523
    return-void
.end method

.method public onLinkState(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;I)V
    .registers 5

    .prologue
    .line 413
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->notPad:Z

    if-eqz v0, :cond_29

    .line 414
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 416
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->close()V

    .line 417
    if-eqz v0, :cond_20

    .line 418
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 419
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 421
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_29

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    .line 425
    :cond_29
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3a

    .line 426
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0432\u044a\u0440\u043d\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e, \u0430\u043a\u043e \u0435 \u0441\u043f\u0440\u044f\u043b\u043e."

    const-string v1, "The pad is back \u2014 start again if it stopped."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 429
    :cond_3a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 430
    return-void
.end method

.method public onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V
    .registers 7

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 557
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 558
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 560
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    .line 561
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 571
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 572
    return-void

    .line 562
    :cond_2a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_38

    .line 563
    const-string v0, "\u0411\u0430\u0442\u0435\u0440\u0438\u044f\u0442\u0430 \u0441\u0432\u044a\u0440\u0448\u0438 \u2014 \u0437\u0430\u0440\u0435\u0434\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e."

    const-string v1, "Battery empty \u2014 charge the pad."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 564
    :cond_38
    const/4 v0, 0x3

    if-ne p2, v0, :cond_46

    .line 565
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438."

    const-string v1, "The pad switched off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 566
    :cond_46
    const/4 v0, 0x4

    if-ne p2, v0, :cond_54

    .line 567
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u043f\u0440\u044f \u0441 \u0433\u0440\u0435\u0448\u043a\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e."

    const-string v1, "The pad stopped with an error \u2014 start again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 568
    :cond_54
    const/4 v0, 0x5

    if-ne p2, v0, :cond_26

    .line 569
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

    .line 386
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

    .line 409
    :cond_21
    :goto_21
    return-void

    .line 389
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

    .line 390
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_21

    .line 394
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

    .line 396
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padCard(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 399
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_77

    .line 400
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 402
    :cond_77
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 404
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_94

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v1, :cond_94

    .line 405
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 407
    :cond_94
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->connect()V

    .line 408
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_21

    :cond_9b
    move v3, v7

    .line 394
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

    .line 535
    .line 536
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

    .line 537
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    or-int/2addr v0, v1

    move v1, v0

    .line 538
    goto :goto_9

    .line 539
    :cond_1e
    if-eqz v1, :cond_42

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_42

    .line 540
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    .line 542
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 543
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 544
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 552
    return-void

    .line 545
    :cond_42
    if-nez v1, :cond_3e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3e

    .line 546
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 547
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

    .line 548
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 549
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    goto :goto_3e
.end method

.method public onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V
    .registers 6

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_13

    .line 529
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v1, :cond_14

    :goto_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_13
    return-void

    .line 529
    :cond_14
    const/4 p2, 0x0

    goto :goto_c
.end method

.method public onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V
    .registers 3

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 577
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

    .line 243
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;-><init>()V

    .line 244
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 245
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    .line 246
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 247
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 248
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    .line 249
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    .line 251
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    .line 254
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    .line 257
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 258
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    .line 259
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "+"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    .line 260
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 261
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    invoke-static {v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 262
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 264
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "0"

    const/high16 v4, 0x42700000    # 60.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    .line 265
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 266
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 267
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0441\u0438\u043b\u0430 \u043e\u0442 60"

    const-string v4, "strength of 60"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
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

    .line 278
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

    .line 279
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

    .line 280
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    return-object v0
.end method

.method pickMinutes(I)V
    .registers 5

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-ne p1, v0, :cond_9

    .line 474
    :cond_8
    :goto_8
    return-void

    .line 469
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 470
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 472
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 473
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8
.end method

.method pickProgram(I)V
    .registers 5

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne p1, v0, :cond_9

    .line 463
    :cond_8
    :goto_8
    return-void

    .line 456
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 457
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 458
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

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 460
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 461
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 462
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8
.end method

.method render()V
    .registers 11

    .prologue
    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_5

    .line 340
    :goto_4
    return-void

    .line 291
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v2

    .line 292
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_e6

    const-wide/16 v0, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 294
    :goto_1d
    const-wide/16 v4, 0x3e7

    add-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 295
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3c

    div-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x3c

    rem-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_f5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u00b7 "

    const-string v4, "left \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v0, :cond_10b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_10b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_7c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_10f

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    .line 300
    :goto_9e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 304
    const/4 v3, 0x0

    .line 305
    const/4 v2, 0x0

    .line 306
    const/4 v0, 0x0

    move v1, v0

    :goto_bf
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_112

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 309
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_db

    .line 310
    add-int/lit8 v3, v3, 0x1

    .line 312
    :cond_db
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    or-int/2addr v2, v0

    .line 306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_bf

    .line 293
    :cond_e6
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v0

    double-to-long v0, v0

    goto/16 :goto_1d

    .line 297
    :cond_f5
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v0, :cond_103

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2713"

    const-string v2, "Done \u2713"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6d

    :cond_103
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6d

    .line 298
    :cond_10b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_7c

    .line 299
    :cond_10f
    const/4 v0, 0x0

    move v1, v0

    goto :goto_9e

    .line 314
    :cond_112
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_187

    const/4 v0, 0x0

    :goto_11d
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-nez v0, :cond_18a

    const-string v0, "Bluetooth \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v4, "Bluetooth is off"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_193

    const-string v0, "\u25a0  \u0421\u043f\u0440\u0438"

    const-string v4, "\u25a0  Stop"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_19c

    const/4 v0, 0x4

    .line 320
    :goto_147
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    if-eq v0, v1, :cond_15e

    .line 321
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 322
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_15e
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_164

    if-lez v3, :cond_19e

    :cond_164
    const/4 v0, 0x1

    .line 325
    :goto_165
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v0, :cond_1a0

    if-nez v2, :cond_1a0

    const/4 v1, 0x1

    :goto_16c
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 326
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v0, :cond_1a2

    if-nez v2, :cond_1a2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_177
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 328
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_1a6

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 339
    :goto_180
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 314
    :cond_187
    const/16 v0, 0x8

    goto :goto_11d

    .line 316
    :cond_18a
    const-string v0, "\u0422\u044a\u0440\u0441\u044f Bluetens\u2026"

    const-string v4, "Looking for Bluetens\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12e

    .line 318
    :cond_193
    const-string v0, "\u25b6  \u041f\u0443\u0441\u043d\u0438"

    const-string v4, "\u25b6  Start"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13f

    .line 319
    :cond_19c
    const/4 v0, 0x0

    goto :goto_147

    .line 324
    :cond_19e
    const/4 v0, 0x0

    goto :goto_165

    .line 325
    :cond_1a0
    const/4 v1, 0x0

    goto :goto_16c

    .line 326
    :cond_1a2
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_177

    .line 330
    :cond_1a6
    if-eqz v2, :cond_1b1

    .line 331
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u043c \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0432 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e\u2026"

    const-string v1, "Sending the program to the pad\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_180

    .line 332
    :cond_1b1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_1be

    .line 333
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0441\u0438\u043b\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u0435 \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u2014 \u043d\u0435 \u0434\u043e \u0431\u043e\u043b\u043a\u0430."

    const-string v1, "Raise the strength until it feels good \u2014 never to pain."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_180

    .line 334
    :cond_1be
    if-nez v3, :cond_1d4

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1cb

    const-string v0, ""

    goto :goto_180

    :cond_1cb
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_180

    .line 337
    :cond_1d4
    const-string v0, "\u0421\u043b\u043e\u0436\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0438 \u043f\u0443\u0441\u043d\u0438. \u0421\u0438\u043b\u0430\u0442\u0430 \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 1."

    const-string v1, "Place the electrodes and start. Strength starts at 1."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_180
.end method

.method renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 344
    iget-object v6, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_b1

    move v0, v1

    .line 346
    :goto_10
    iget-boolean v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->duo:Z

    if-eqz v3, :cond_b4

    const-string v3, "Duo"

    .line 347
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

    .line 348
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryPct()I

    move-result v3

    .line 349
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

    .line 350
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    if-ltz v3, :cond_bb

    const/16 v0, 0x19

    if-gt v3, v0, :cond_bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_64
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 353
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v3, v8, :cond_c7

    .line 354
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_be

    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0438 \u25cf"

    const-string v3, "Running \u25cf"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_79
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move-object v4, v0

    .line 362
    :goto_7c
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e2

    iget v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    :goto_8e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e4

    iget v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v8, :cond_e4

    .line 366
    :goto_9d
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e6

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a3
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 367
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 368
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 369
    return-void

    :cond_b1
    move v0, v2

    .line 345
    goto/16 :goto_10

    .line 346
    :cond_b4
    const-string v3, "Bluetens"

    goto/16 :goto_16

    .line 349
    :cond_b8
    const-string v0, ""

    goto :goto_57

    .line 350
    :cond_bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_64

    .line 354
    :cond_be
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0430\u043d \u2713"

    const-string v3, "Connected \u2713"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 356
    :cond_c7
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d8

    .line 357
    const-string v0, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0430\u0434\u043d\u0430 \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v3, "Link lost \u2014 reconnecting"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 358
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move v3, v0

    goto :goto_7c

    .line 360
    :cond_d8
    const-string v3, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v4, "Connecting\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v3, v0

    goto :goto_7c

    :cond_e2
    move v0, v2

    .line 364
    goto :goto_8e

    :cond_e4
    move v1, v2

    .line 365
    goto :goto_9d

    .line 366
    :cond_e6
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_a3
.end method

.method show()V
    .registers 10

    .prologue
    const/16 v8, 0xe

    const/4 v7, -0x2

    const/high16 v6, 0x42600000    # 56.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 116
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

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->leftColumn()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 125
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3fc66666    # 1.55f

    invoke-direct {v2, v4, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 126
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    .line 130
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    .line 132
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 142
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 145
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 146
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method startScan()V
    .registers 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 382
    :goto_4
    return-void

    .line 377
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 378
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    move-result v0

    if-nez v0, :cond_17

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 381
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_4
.end method

.method step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 7

    .prologue
    .line 498
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 499
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-nez v1, :cond_9

    .line 508
    :cond_8
    :goto_8
    return-void

    .line 502
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x3c

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 503
    iget v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    if-eq v1, v2, :cond_8

    .line 504
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 505
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength(I)V

    .line 506
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method tick()V
    .registers 5

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_9

    .line 516
    :cond_8
    :goto_8
    return-void

    .line 514
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method
