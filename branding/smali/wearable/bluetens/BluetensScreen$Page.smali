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


# static fields
.field static final L_BURST:I = 0x2

.field static final L_HZ:I = 0x0

.field static final L_REST:I = 0x4

.field static final L_US:I = 0x1

.field static final L_WORK:I = 0x3


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

.field lBurst:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field lBurstBox:Landroid/view/View;

.field lHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field lNote:Landroid/widget/TextView;

.field lRest:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field lRestBox:Landroid/view/View;

.field lUs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field lWork:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field lengthMs:J

.field live:Z

.field liveFile:Ljava/lang/String;

.field liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

.field liveToken:I

.field liveWhy:Ljava/lang/String;

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

.field wasSwapping:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 93
    const-string v0, "XLIVA"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 123
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_bluetens"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "program"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mine"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mine_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "live"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "live_step"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_94

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    :goto_8c
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    .line 133
    return-void

    .line 131
    :cond_94
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveDefault()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v0

    goto :goto_8c
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
    .line 450
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 451
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 455
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static liveDefault()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;
    .registers 2

    .prologue
    .line 137
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    .line 138
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 139
    const/16 v1, 0xc8

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 140
    return-object v0
.end method

.method static summary(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 460
    const/16 v3, 0x3e7

    .line 461
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

    .line 462
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 463
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 464
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 465
    goto :goto_b

    .line 466
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

    .line 557
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 559
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 560
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x42500000    # 52.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    .line 561
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 562
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    .line 564
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 565
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 568
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 569
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    .line 570
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 571
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    .line 572
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    return-object v0
.end method

.method currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 5

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_10

    .line 525
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    .line 531
    :goto_f
    return-object v0

    .line 527
    :cond_10
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-nez v0, :cond_1d

    .line 528
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_f

    .line 530
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_f

    :cond_2c
    const/4 v0, 0x0

    goto :goto_f
.end method

.method currentName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_d

    .line 536
    const-string v0, "\u041d\u0430 \u0436\u0438\u0432\u043e"

    const-string v1, "Live"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    :goto_c
    return-object v0

    .line 538
    :cond_d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-nez v0, :cond_1c

    .line 539
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 541
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    goto :goto_c

    :cond_29
    const-string v0, ""

    goto :goto_c
.end method

.method dismissed()V
    .registers 5

    .prologue
    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    .line 962
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_c

    .line 963
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 965
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

    .line 966
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v2, :cond_12

    .line 967
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_12

    .line 970
    :cond_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;-><init>(Ljava/util/List;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 971
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method editMine(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 500
    :cond_4
    :goto_4
    return-void

    .line 496
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_4

    .line 498
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    goto :goto_4
.end method

.method edited(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V
    .registers 5

    .prologue
    .line 513
    if-eqz p1, :cond_17

    .line 514
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine_id"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 517
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 518
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 519
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 520
    return-void
.end method

.method emptyCard()Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 579
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 580
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 581
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 582
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41900000    # 18.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    .line 583
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 584
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 585
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441 \u0431\u0443\u0442\u043e\u043d\u0430 \u043c\u0443. Duo \u2014 \u0432\u043a\u043b\u044e\u0447\u0438 \u0438 \u0434\u0432\u0435\u0442\u0435."

    const-string v3, "Switch the pad on with its button. Duo \u2014 switch on both."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 587
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 588
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 589
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 590
    return-object v0
.end method

.method fillLive()V
    .registers 11

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-array v4, v7, [Ljava/lang/String;

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v5, "Pulses"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "\u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a"

    const-string v5, "Australian current"

    .line 299
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v0

    if-eqz v0, :cond_112

    move v0, v1

    :goto_27
    new-instance v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveKind;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveKind;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    .line 298
    invoke-static {v3, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 300
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 302
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 303
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 304
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 306
    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 307
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    const-string v0, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    const-string v5, "Frequency"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 310
    const-string v0, "\u0428\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v2, "Pulse width"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lUs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 311
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 312
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurstBox:Landroid/view/View;

    .line 314
    const-string v2, "\u0414\u044a\u043b\u0436\u0438\u043d\u0430 \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    const-string v3, "Burst length"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurst:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 315
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v2, "Impulse"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lWork:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 317
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRestBox:Landroid/view/View;

    .line 319
    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRest:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0438 \u043a\u0430\u0442\u043e \u043c\u043e\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "Save as my program"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 323
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderLive()V

    .line 326
    return-void

    :cond_112
    move v0, v2

    .line 299
    goto/16 :goto_27
.end method

.method fillMine()V
    .registers 13

    .prologue
    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    if-nez v0, :cond_18

    .line 250
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_158

    const-string v0, ""

    :goto_16
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 252
    :cond_18
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 253
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 254
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 255
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 256
    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 257
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

    .line 258
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v2, v1

    .line 259
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

    .line 261
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 262
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 264
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 265
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16c

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    move-object v2, v1

    :goto_a2
    const/high16 v10, 0x41800000    # 16.0f

    .line 266
    if-eqz v6, :cond_177

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_a8
    const/4 v11, 0x1

    .line 265
    invoke-static {v9, v2, v10, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
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

    .line 268
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

    .line 269
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->summary(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    .line 267
    invoke-static {v9, v1, v2, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u270e"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x30

    invoke-static {v1, v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 272
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_183

    const/4 v0, 0x1

    :goto_138
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 274
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_185

    if-nez v6, :cond_185

    const v0, 0x3ecccccd    # 0.4f

    :goto_147
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1e

    .line 250
    :cond_158
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    goto/16 :goto_16

    .line 260
    :cond_163
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_77

    .line 265
    :cond_16c
    const-string v1, "\u0411\u0435\u0437 \u0438\u043c\u0435"

    const-string v2, "Untitled"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_a2

    .line 266
    :cond_177
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_a8

    .line 268
    :cond_17b
    const-string v1, " \u0441\u0442\u044a\u043f\u043a\u0438"

    goto/16 :goto_de

    :cond_17f
    const-string v2, " steps"

    goto/16 :goto_e9

    .line 273
    :cond_183
    const/4 v0, 0x0

    goto :goto_138

    .line 275
    :cond_185
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_147

    .line 278
    :cond_188
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 279
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

    .line 282
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

    .line 283
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    :cond_1c1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v0, "\uff0b  \u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "\uff0b  New program"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1fe

    const/4 v0, 0x0

    .line 285
    :goto_1d2
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 287
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_200

    const/4 v0, 0x1

    :goto_1e3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 289
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_202

    const v0, 0x3ecccccd    # 0.4f

    :goto_1ed
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-void

    .line 286
    :cond_1fe
    const/4 v0, 0x2

    goto :goto_1d2

    .line 288
    :cond_200
    const/4 v0, 0x0

    goto :goto_1e3

    .line 289
    :cond_202
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1ed
.end method

.method fillMinutes()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 546
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 547
    sget-object v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->MINUTES:[I

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_63

    aget v5, v3, v2

    .line 548
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

    .line 549
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;

    invoke-direct {v0, p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-eq v5, v0, :cond_60

    const v0, 0x3ecccccd    # 0.4f

    :goto_47
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 551
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 552
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 547
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_5e
    move v0, v1

    .line 548
    goto :goto_2e

    .line 550
    :cond_60
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_47

    .line 554
    :cond_63
    return-void
.end method

.method fillPrograms()V
    .registers 14

    .prologue
    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 203
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v0, 0x3

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

    const/4 v0, 0x2

    const-string v3, "\u041d\u0430 \u0436\u0438\u0432\u043e"

    const-string v4, "Live"

    .line 204
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_64

    const/4 v0, 0x2

    :goto_30
    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    .line 203
    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 205
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_6c

    const v0, 0x3ecccccd    # 0.4f

    :goto_40
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 208
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-nez v0, :cond_6f

    const/16 v0, 0x8

    :goto_59
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_71

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillLive()V

    .line 244
    :cond_63
    :goto_63
    return-void

    .line 204
    :cond_64
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    goto :goto_30

    :cond_6a
    const/4 v0, 0x0

    goto :goto_30

    .line 205
    :cond_6c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_40

    .line 208
    :cond_6f
    const/4 v0, 0x0

    goto :goto_59

    .line 213
    :cond_71
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_79

    .line 214
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMine()V

    goto :goto_63

    .line 217
    :cond_79
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v4

    .line 218
    sget-object v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->ALL:[I

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_82
    if-ge v3, v6, :cond_63

    aget v7, v5, v3

    .line 219
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne v7, v0, :cond_180

    const/4 v0, 0x1

    .line 220
    :goto_8b
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->tint(I)I

    move-result v2

    .line 221
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 222
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 223
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

    .line 224
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v9, v1

    .line 225
    if-eqz v0, :cond_183

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

    :goto_d4
    invoke-static {v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 228
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;

    invoke-direct {v1, p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 230
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    if-eqz v0, :cond_18c

    const-string v1, "\u2713"

    :goto_f0
    const/high16 v10, 0x41600000    # 14.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v12, 0x1

    invoke-static {v9, v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 231
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 232
    if-eqz v0, :cond_190

    move v1, v2

    :goto_101
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x41d00000    # 26.0f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 235
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v0, :cond_198

    :goto_135
    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->feel(IZ)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {v2, v7, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 239
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 240
    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v1, :cond_19b

    if-nez v0, :cond_19b

    const v0, 0x3ecccccd    # 0.4f

    :goto_16c
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_82

    .line 219
    :cond_180
    const/4 v0, 0x0

    goto/16 :goto_8b

    .line 226
    :cond_183
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_d4

    .line 230
    :cond_18c
    const-string v1, ""

    goto/16 :goto_f0

    .line 232
    :cond_190
    const/16 v1, 0x55

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto/16 :goto_101

    .line 235
    :cond_198
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_135

    .line 241
    :cond_19b
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_16c
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 799
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

    .line 800
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    if-ne v2, p1, :cond_6

    .line 804
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 808
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

    .line 809
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    if-ne v2, p1, :cond_6

    .line 813
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method go()V
    .registers 7

    .prologue
    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 844
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_21

    .line 845
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

    .line 846
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_d

    .line 850
    :cond_21
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v2

    .line 851
    if-nez v2, :cond_28

    .line 866
    :cond_27
    :goto_27
    return-void

    .line 854
    :cond_28
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v3

    .line 856
    const-string v0, "XLIVA"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 857
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_66

    const-string v0, "XLIVA"

    move-object v1, v0

    .line 858
    :goto_3b
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    .line 859
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 860
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 861
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4b

    .line 862
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0, v1, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->start(Ljava/lang/String;[B)V

    goto :goto_4b

    .line 857
    :cond_66
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_6e

    const-string v0, "XMINE"

    move-object v1, v0

    goto :goto_3b

    :cond_6e
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fileName(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3b

    .line 865
    :cond_78
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_27
.end method

.method leftColumn()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    .line 190
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    .line 192
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    .line 194
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

    .line 195
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    .line 196
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    return-object v0
.end method

.method liveApply(I)V
    .registers 8

    .prologue
    .line 421
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-nez v0, :cond_11

    .line 436
    :cond_10
    :goto_10
    return-void

    .line 424
    :cond_11
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 425
    const-wide/16 v0, 0x3a98

    cmp-long v0, v2, v0

    if-ltz v0, :cond_10

    .line 428
    const-string v0, "XLIVA"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "XLIVB"

    :goto_2e
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 429
    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v1

    .line 430
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 431
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_42

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v3, :cond_42

    .line 432
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swap(Ljava/lang/String;[B)V

    goto :goto_42

    .line 428
    :cond_67
    const-string v0, "XLIVA"

    goto :goto_2e

    .line 435
    :cond_6a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_10
.end method

.method liveChange(II)V
    .registers 8

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x1

    .line 371
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 372
    packed-switch p1, :pswitch_data_76

    .line 389
    const/16 v0, 0x1e

    iget v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 392
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveChanged()V

    .line 393
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderLive()V

    .line 394
    return-void

    .line 374
    :pswitch_1e
    const/16 v0, 0x78

    iget v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 375
    iget v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_17

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 376
    iget v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    if-lt v0, v4, :cond_41

    const/4 v0, 0x4

    :goto_3e
    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    goto :goto_17

    :cond_41
    const/4 v0, 0x6

    goto :goto_3e

    .line 380
    :pswitch_43
    const/16 v0, 0x190

    iget v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    mul-int/lit8 v3, p2, 0xa

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    goto :goto_17

    .line 383
    :pswitch_55
    const/4 v0, 0x5

    iget v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    goto :goto_17

    .line 386
    :pswitch_64
    const/4 v0, 0x0

    const/16 v2, 0xa

    iget v3, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    goto :goto_17

    .line 372
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_43
        :pswitch_55
        :pswitch_64
    .end packed-switch
.end method

.method liveChanged()V
    .registers 5

    .prologue
    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/16 v1, 0xe10

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 399
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_15
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    .line 401
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 402
    const-string v1, "live"

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 403
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "live_step"

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 405
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_54

    .line 406
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    :cond_54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 409
    return-void

    .line 400
    :cond_58
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_15
.end method

.method liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 9

    .prologue
    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/high16 v1, 0x41480000    # 12.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {v0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    const/high16 v3, 0x41b00000    # 22.0f

    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;

    invoke-direct {v4, p0, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    .line 331
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    return-object v0
.end method

.method liveKind(I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 356
    if-ne p1, v1, :cond_e

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v3

    if-ne v0, v3, :cond_10

    .line 368
    :goto_d
    return-void

    :cond_e
    move v0, v2

    .line 356
    goto :goto_5

    .line 359
    :cond_10
    if-ne p1, v1, :cond_32

    .line 360
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    .line 361
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/16 v1, 0x32

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 362
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    const/16 v2, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 366
    :goto_2b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveChanged()V

    .line 367
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    goto :goto_d

    .line 364
    :cond_32
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iput v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    goto :goto_2b
.end method

.method liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 12

    .prologue
    .line 412
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v1

    .line 414
    const-wide/16 v2, 0xa

    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 415
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    return-object v0
.end method

.method liveSave()V
    .registers 6

    .prologue
    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 440
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->newId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u0430 \u0436\u0438\u0432\u043e "

    const-string v4, "Live "

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

    .line 441
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v1

    .line 442
    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    mul-int/lit8 v2, v2, 0x3c

    iput v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 443
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u0417\u0430\u043f\u0438\u0441\u0430\u043d\u0430 \u0432 \u201e\u041c\u043e\u0438\u201c \u043a\u0430\u0442\u043e \u201e"

    const-string v3, "\u2713 Saved in \u201cMine\u201d as \u201c"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u201c"

    const-string v2, "\u201d"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 446
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 447
    return-void
.end method

.method newMine()V
    .registers 6

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 510
    :goto_4
    return-void

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 507
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

    .line 508
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 509
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    goto :goto_4
.end method

.method public onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 952
    const-string v0, "str"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "bat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 953
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u043d\u0435 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The pad did not answer \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 955
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 956
    return-void
.end method

.method public onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V
    .registers 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 894
    return-void
.end method

.method public onLinkState(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;I)V
    .registers 5

    .prologue
    .line 779
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->notPad:Z

    if-eqz v0, :cond_29

    .line 780
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 782
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->close()V

    .line 783
    if-eqz v0, :cond_20

    .line 784
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 785
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 787
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_29

    .line 788
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    .line 791
    :cond_29
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3a

    .line 792
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0432\u044a\u0440\u043d\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e, \u0430\u043a\u043e \u0435 \u0441\u043f\u0440\u044f\u043b\u043e."

    const-string v1, "The pad is back \u2014 start again if it stopped."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 795
    :cond_3a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 796
    return-void
.end method

.method public onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V
    .registers 7

    .prologue
    .line 927
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 928
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 929
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 931
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    .line 932
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 942
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 943
    return-void

    .line 933
    :cond_2a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_38

    .line 934
    const-string v0, "\u0411\u0430\u0442\u0435\u0440\u0438\u044f\u0442\u0430 \u0441\u0432\u044a\u0440\u0448\u0438 \u2014 \u0437\u0430\u0440\u0435\u0434\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e."

    const-string v1, "Battery empty \u2014 charge the pad."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 935
    :cond_38
    const/4 v0, 0x3

    if-ne p2, v0, :cond_46

    .line 936
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438."

    const-string v1, "The pad switched off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 937
    :cond_46
    const/4 v0, 0x4

    if-ne p2, v0, :cond_54

    .line 938
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u043f\u0440\u044f \u0441 \u0433\u0440\u0435\u0448\u043a\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e."

    const-string v1, "The pad stopped with an error \u2014 start again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 939
    :cond_54
    const/4 v0, 0x5

    if-ne p2, v0, :cond_26

    .line 940
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

    .line 752
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

    .line 775
    :cond_21
    :goto_21
    return-void

    .line 755
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

    .line 756
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_21

    .line 760
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

    .line 762
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padCard(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v1

    .line 763
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 765
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_77

    .line 766
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 768
    :cond_77
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 770
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_94

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v1, :cond_94

    .line 771
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 773
    :cond_94
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->connect()V

    .line 774
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_21

    :cond_9b
    move v3, v7

    .line 760
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

    .line 906
    .line 907
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

    .line 908
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    or-int/2addr v0, v1

    move v1, v0

    .line 909
    goto :goto_9

    .line 910
    :cond_1e
    if-eqz v1, :cond_42

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_42

    .line 911
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    .line 913
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 914
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 915
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 922
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 923
    return-void

    .line 916
    :cond_42
    if-nez v1, :cond_3e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3e

    .line 917
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 918
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

    .line 919
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 920
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    goto :goto_3e
.end method

.method public onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V
    .registers 6

    .prologue
    .line 898
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 899
    if-eqz v0, :cond_13

    .line 900
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v1, :cond_14

    :goto_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    :cond_13
    return-void

    .line 900
    :cond_14
    const/4 p2, 0x0

    goto :goto_c
.end method

.method public onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V
    .registers 3

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 948
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

    .line 594
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;-><init>()V

    .line 595
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 596
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    .line 597
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 598
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 599
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    .line 600
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    .line 602
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 603
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    .line 605
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    .line 608
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 609
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    .line 610
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "+"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    .line 611
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 612
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    invoke-static {v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 613
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 614
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 615
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "0"

    const/high16 v4, 0x42700000    # 60.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    .line 616
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 617
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 618
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 619
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0441\u0438\u043b\u0430 \u043e\u0442 60"

    const-string v4, "strength of 60"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 620
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 621
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 623
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 625
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
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

    .line 629
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

    .line 630
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

    .line 631
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    return-object v0
.end method

.method pickMine(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 490
    :cond_c
    :goto_c
    return-void

    .line 485
    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 488
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 489
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_c
.end method

.method pickMinutes(I)V
    .registers 5

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-ne p1, v0, :cond_9

    .line 840
    :cond_8
    :goto_8
    return-void

    .line 835
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 836
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 838
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 839
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8
.end method

.method pickProgram(I)V
    .registers 5

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne p1, v0, :cond_9

    .line 829
    :cond_8
    :goto_8
    return-void

    .line 822
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 823
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 824
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

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 826
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 827
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 828
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8
.end method

.method render()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const-wide/16 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 639
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_c

    .line 706
    :goto_b
    return-void

    .line 642
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    .line 643
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_eb

    const/4 v0, 0x0

    move-object v1, v0

    .line 644
    :goto_15
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_f2

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v10, v12

    sub-long/2addr v2, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 646
    :goto_27
    const-wide/16 v10, 0x3e7

    add-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    .line 647
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

    .line 648
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_fe

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

    .line 650
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_112

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_81
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 651
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_116

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_116

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

    .line 652
    :goto_9f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 653
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v2, v8, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 654
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    .line 659
    :goto_be
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_119

    .line 660
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 661
    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 662
    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v9, v14, :cond_d9

    .line 663
    add-int/lit8 v5, v5, 0x1

    .line 665
    :cond_d9
    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    or-int/2addr v4, v9

    .line 666
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    or-int/2addr v3, v0

    .line 659
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_be

    .line 643
    :cond_eb
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_15

    .line 645
    :cond_f2
    if-eqz v1, :cond_fb

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v2

    double-to-long v2, v2

    goto/16 :goto_27

    :cond_fb
    move-wide v2, v4

    goto/16 :goto_27

    .line 649
    :cond_fe
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v0, :cond_10c

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2713"

    const-string v3, "Done \u2713"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    :cond_10c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_72

    .line 650
    :cond_112
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_81

    .line 651
    :cond_116
    const/4 v0, 0x0

    move v2, v0

    goto :goto_9f

    .line 668
    :cond_119
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->wasSwapping:Z

    if-eqz v0, :cond_12d

    if-nez v3, :cond_12d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_12d

    .line 669
    const-string v0, "\u2713 \u041d\u043e\u0432\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0440\u0430\u0431\u043e\u0442\u044f\u0442"

    const-string v2, "\u2713 The new values are on"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 671
    :cond_12d
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->wasSwapping:Z

    .line 672
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ad

    move v0, v6

    :goto_13a
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-nez v0, :cond_1b0

    const-string v0, "Bluetooth \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v9, "Bluetooth is off"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_1b9

    const-string v0, "\u25a0  \u0421\u043f\u0440\u0438"

    const-string v9, "\u25a0  Stop"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15c
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_1c2

    const/4 v0, 0x4

    .line 678
    :goto_164
    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    if-eq v0, v2, :cond_17b

    .line 679
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 680
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v10, ""

    invoke-static {v9, v10, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    :cond_17b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_183

    if-lez v5, :cond_1c4

    if-eqz v1, :cond_1c4

    :cond_183
    move v2, v7

    .line 683
    :goto_184
    if-eqz v4, :cond_1c6

    if-nez v3, :cond_1c6

    move v0, v7

    .line 684
    :goto_189
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v2, :cond_1c8

    if-nez v0, :cond_1c8

    :goto_18f
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 685
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v2, :cond_1ca

    if-nez v0, :cond_1ca

    move v0, v8

    :goto_199
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 687
    if-eqz v3, :cond_1ce

    .line 688
    const-string v0, "\u041f\u0440\u0438\u043b\u0430\u0433\u0430\u043c \u043d\u043e\u0432\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u2026"

    const-string v1, "Applying the new values\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    :goto_1a6
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 672
    :cond_1ad
    const/16 v0, 0x8

    goto :goto_13a

    .line 674
    :cond_1b0
    const-string v0, "\u0422\u044a\u0440\u0441\u044f Bluetens\u2026"

    const-string v9, "Looking for Bluetens\u2026"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14b

    .line 676
    :cond_1b9
    const-string v0, "\u25b6  \u041f\u0443\u0441\u043d\u0438"

    const-string v9, "\u25b6  Start"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15c

    :cond_1c2
    move v0, v6

    .line 677
    goto :goto_164

    :cond_1c4
    move v2, v6

    .line 682
    goto :goto_184

    :cond_1c6
    move v0, v6

    .line 683
    goto :goto_189

    :cond_1c8
    move v7, v6

    .line 684
    goto :goto_18f

    .line 685
    :cond_1ca
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_199

    .line 689
    :cond_1ce
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_1d5

    .line 690
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_1a6

    .line 691
    :cond_1d5
    if-eqz v4, :cond_1e0

    .line 692
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u043c \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0432 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e\u2026"

    const-string v1, "Sending the program to the pad\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a6

    .line 693
    :cond_1e0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_1f1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_1f1

    .line 694
    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u044f\u0439 \u043e\u0442\u043b\u044f\u0432\u043e \u2014 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u043b\u0435\u0434\u0432\u0430 \u0437\u0430 \u043e\u043a\u043e\u043b\u043e \u0441\u0435\u043a\u0443\u043d\u0434\u0430."

    const-string v1, "Change the values on the left \u2014 the pad follows in about a second."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a6

    .line 696
    :cond_1f1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_1fe

    .line 697
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0441\u0438\u043b\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u0435 \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u2014 \u043d\u0435 \u0434\u043e \u0431\u043e\u043b\u043a\u0430."

    const-string v1, "Raise the strength until it feels good \u2014 never to pain."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a6

    .line 698
    :cond_1fe
    if-nez v1, :cond_209

    .line 699
    const-string v0, "\u041d\u0430\u043f\u0440\u0430\u0432\u0438 \u0441\u0432\u043e\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441 \uff0b \u0438\u043b\u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u043e\u0442 \u201e\u0413\u043e\u0442\u043e\u0432\u0438\u201c."

    const-string v1, "Make a program with \uff0b or pick a ready one."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a6

    .line 700
    :cond_209
    if-nez v5, :cond_21f

    .line 701
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_216

    const-string v0, ""

    goto :goto_1a6

    :cond_216
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a6

    .line 703
    :cond_21f
    const-string v0, "\u0421\u043b\u043e\u0436\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0438 \u043f\u0443\u0441\u043d\u0438. \u0421\u0438\u043b\u0430\u0442\u0430 \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 1."

    const-string v1, "Place the electrodes and start. Strength starts at 1."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6
.end method

.method renderLive()V
    .registers 9

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-nez v0, :cond_8

    .line 353
    :goto_7
    return-void

    .line 341
    :cond_8
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 342
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v3

    .line 343
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_dc

    const-string v0, "\u043f\u0430\u043a\u0435\u0442\u0430 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    const-string v7, "bursts a second"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {v5, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lUs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v5, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u00b5s"

    invoke-virtual {v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurstBox:Landroid/view/View;

    if-eqz v3, :cond_e0

    move v0, v1

    :goto_35
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurst:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u043c\u0441"

    const-string v6, " ms"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u043f\u0440\u0438 1 kHz"

    const-string v6, "at 1 kHz"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lWork:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string v0, "\u0431\u0435\u0437 \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "continuous"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_70
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v3, "\u043f\u043e\u0434 20 Hz"

    const-string v6, "under 20 Hz"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    :goto_7e
    invoke-virtual {v5, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRestBox:Landroid/view/View;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_104

    const v0, 0x3eb33333    # 0.35f

    :goto_8c
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 350
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRest:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_107

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u26a0 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ca
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10a

    :goto_d7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 343
    :cond_dc
    const-string v0, "Hz"

    goto/16 :goto_20

    :cond_e0
    move v0, v2

    .line 345
    goto/16 :goto_35

    .line 347
    :cond_e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    .line 348
    :cond_fa
    const-string v3, "\u043f\u043e\u0441\u043b\u0435 \u043f\u0430\u0443\u0437\u0430"

    const-string v6, "then a pause"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7e

    .line 349
    :cond_104
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8c

    .line 351
    :cond_107
    const-string v0, ""

    goto :goto_ca

    :cond_10a
    move v1, v2

    .line 352
    goto :goto_d7
.end method

.method renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 709
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 710
    iget-object v6, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 711
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_b1

    move v0, v1

    .line 712
    :goto_10
    iget-boolean v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->duo:Z

    if-eqz v3, :cond_b4

    const-string v3, "Duo"

    .line 713
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

    .line 714
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryPct()I

    move-result v3

    .line 715
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

    .line 716
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    if-ltz v3, :cond_bb

    const/16 v0, 0x19

    if-gt v3, v0, :cond_bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_64
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 718
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 719
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v3, v8, :cond_c7

    .line 720
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_be

    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0438 \u25cf"

    const-string v3, "Running \u25cf"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    :goto_79
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move-object v4, v0

    .line 728
    :goto_7c
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e2

    iget v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    :goto_8e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e4

    iget v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v8, :cond_e4

    .line 732
    :goto_9d
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e6

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a3
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 733
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 734
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 735
    return-void

    :cond_b1
    move v0, v2

    .line 711
    goto/16 :goto_10

    .line 712
    :cond_b4
    const-string v3, "Bluetens"

    goto/16 :goto_16

    .line 715
    :cond_b8
    const-string v0, ""

    goto :goto_57

    .line 716
    :cond_bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_64

    .line 720
    :cond_be
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0430\u043d \u2713"

    const-string v3, "Connected \u2713"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 722
    :cond_c7
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d8

    .line 723
    const-string v0, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0430\u0434\u043d\u0430 \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v3, "Link lost \u2014 reconnecting"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 724
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move v3, v0

    goto :goto_7c

    .line 726
    :cond_d8
    const-string v3, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v4, "Connecting\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v3, v0

    goto :goto_7c

    :cond_e2
    move v0, v2

    .line 730
    goto :goto_8e

    :cond_e4
    move v1, v2

    .line 731
    goto :goto_9d

    .line 732
    :cond_e6
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_a3
.end method

.method setTab(I)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_f

    move v0, v3

    :goto_c
    if-ne p1, v0, :cond_17

    .line 479
    :cond_e
    :goto_e
    return-void

    .line 470
    :cond_f
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_c

    :cond_15
    move v0, v2

    goto :goto_c

    .line 473
    :cond_17
    if-ne p1, v1, :cond_42

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 474
    if-ne p1, v3, :cond_44

    :goto_1e
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 477
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 478
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_e

    :cond_42
    move v0, v2

    .line 473
    goto :goto_1a

    :cond_44
    move v1, v2

    .line 474
    goto :goto_1e
.end method

.method show()V
    .registers 10

    .prologue
    const/16 v8, 0xe

    const/4 v7, -0x2

    const/high16 v6, 0x42600000    # 56.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 151
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

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fullScreen(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->leftColumn()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3fc66666    # 1.55f

    invoke-direct {v2, v4, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 161
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    .line 165
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    .line 167
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 177
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 180
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 181
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method startScan()V
    .registers 2

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 748
    :goto_4
    return-void

    .line 743
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 744
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    move-result v0

    if-nez v0, :cond_17

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 747
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_4
.end method

.method step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 7

    .prologue
    .line 869
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 870
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-nez v1, :cond_9

    .line 879
    :cond_8
    :goto_8
    return-void

    .line 873
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x3c

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 874
    iget v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    if-eq v1, v2, :cond_8

    .line 875
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 876
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength(I)V

    .line 877
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method tick()V
    .registers 5

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_9

    .line 887
    :cond_8
    :goto_8
    return-void

    .line 885
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 886
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method
