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

.field lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

.field libCat:Ljava/lang/String;

.field libFile:Ljava/lang/String;

.field libLoading:Z

.field libLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

.field libLokFile:Ljava/lang/String;

.field libPart:Ljava/lang/String;

.field libTab:Z

.field live:Z

.field liveFile:Ljava/lang/String;

.field liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

.field liveToken:I

.field liveWhy:Ljava/lang/String;

.field final main:Landroid/os/Handler;

.field mine:Z

.field mineId:Ljava/lang/String;

.field mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

.field minimized:Z

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

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libFile:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libLokFile:Ljava/lang/String;

    .line 136
    const-string v0, "XLIVA"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 166
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_bluetens"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "program"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mine"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mine_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "live"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "lib"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "lib_part"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "lib_cat"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "lib_file"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libFile:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "live_step"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_d2

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    :goto_ca
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    .line 180
    return-void

    .line 178
    :cond_d2
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveDefault()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v0

    goto :goto_ca
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
    .line 721
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 722
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 726
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static liveDefault()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;
    .registers 2

    .prologue
    .line 184
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    .line 185
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 186
    const/16 v1, 0xc8

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 187
    return-object v0
.end method

.method static summary(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 731
    const/16 v3, 0x3e7

    .line 732
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

    .line 733
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 734
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 735
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 736
    goto :goto_b

    .line 737
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
.method chipRow(Ljava/util/List;Ljava/lang/String;Z)Landroid/view/View;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 509
    new-instance v2, Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {v2, v8}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 512
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 513
    aget-object v1, v0, v8

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 514
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    aget-object v7, v0, v1

    if-eqz p3, :cond_5a

    const v1, -0xcb2c67

    :goto_31
    invoke-static {v6, v7, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 515
    new-instance v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;

    aget-object v0, v0, v8

    invoke-direct {v6, p0, v0, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    const/high16 v0, 0x42300000    # 44.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 517
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5d

    if-nez v5, :cond_5d

    const v0, 0x3ecccccd    # 0.4f

    :goto_51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_15

    .line 514
    :cond_5a
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_31

    .line 517
    :cond_5d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_51

    .line 520
    :cond_60
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 521
    return-object v2
.end method

.method clockCard()Landroid/widget/LinearLayout;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v6, 0x0

    .line 848
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 849
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 850
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 851
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x42500000    # 52.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    .line 852
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 853
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 854
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    .line 855
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 856
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 858
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 859
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 860
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    .line 861
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 862
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    .line 863
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    return-object v0
.end method

.method currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 800
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v1, :cond_25

    .line 801
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libProg()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    move-result-object v1

    .line 802
    if-nez v1, :cond_c

    .line 818
    :cond_b
    :goto_b
    return-object v0

    .line 805
    :cond_c
    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->file:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libLokFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 806
    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libLokFile:Ljava/lang/String;

    .line 807
    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->lok:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    .line 809
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    goto :goto_b

    .line 811
    :cond_25
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v1, :cond_35

    .line 812
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_b

    .line 814
    :cond_35
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-nez v1, :cond_42

    .line 815
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_b

    .line 817
    :cond_42
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v1

    .line 818
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_b
.end method

.method currentName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v0, :cond_16

    .line 823
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libProg()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->name(Z)Ljava/lang/String;

    move-result-object v0

    .line 833
    :goto_12
    return-object v0

    .line 824
    :cond_13
    const-string v0, ""

    goto :goto_12

    .line 826
    :cond_16
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_23

    .line 827
    const-string v0, "\u041d\u0430 \u0436\u0438\u0432\u043e"

    const-string v1, "Live"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 829
    :cond_23
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-nez v0, :cond_32

    .line 830
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 832
    :cond_32
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 833
    if-eqz v0, :cond_3f

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    goto :goto_12

    :cond_3f
    const-string v0, ""

    goto :goto_12
.end method

.method dismissed()V
    .registers 5

    .prologue
    .line 1265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    .line 1267
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    if-eqz v0, :cond_f

    .line 1268
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->hide()V

    .line 1270
    :cond_f
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    if-ne v0, p0, :cond_16

    .line 1271
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1273
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_1f

    .line 1274
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 1276
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 1277
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v2, :cond_25

    .line 1278
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_25

    .line 1281
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;-><init>(Ljava/util/List;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1282
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method editMine(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 776
    :cond_4
    :goto_4
    return-void

    .line 772
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_4

    .line 774
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    goto :goto_4
.end method

.method edited(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V
    .registers 5

    .prologue
    .line 789
    if-eqz p1, :cond_17

    .line 790
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine_id"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 793
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 794
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 795
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 796
    return-void
.end method

.method emptyCard()Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 870
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 871
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 872
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 873
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41900000    # 18.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    .line 874
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 875
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 876
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441 \u0431\u0443\u0442\u043e\u043d\u0430 \u043c\u0443. Duo \u2014 \u0432\u043a\u043b\u044e\u0447\u0438 \u0438 \u0434\u0432\u0435\u0442\u0435."

    const-string v3, "Switch the pad on with its button. Duo \u2014 switch on both."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 878
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 879
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 880
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 881
    return-object v0
.end method

.method fillLibrary()V
    .registers 15

    .prologue
    .line 419
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    if-nez v0, :cond_47

    .line 420
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libLoading:Z

    if-nez v0, :cond_13

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libLoading:Z

    .line 422
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;->start()V

    .line 424
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u0440\u0435\u0436\u0434\u0430\u043c \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435\u2026"

    const-string v2, "Loading the programs\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 425
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 426
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    :cond_46
    :goto_46
    return-void

    .line 429
    :cond_47
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v4

    .line 430
    const v5, -0xcb2c67

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041a\u044a\u0434\u0435 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v3, "Where on the body"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v6, "All"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 435
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v0, v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    if-eqz v4, :cond_ac

    const/4 v7, 0x1

    aget-object v0, v0, v7

    :goto_a6
    aput-object v0, v3, v6

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_ac
    const/4 v7, 0x2

    aget-object v0, v0, v7

    goto :goto_a6

    .line 437
    :cond_b0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->chipRow(Ljava/util/List;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->cats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d0
    :goto_d0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->progs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    .line 442
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->on(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e4

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->cat:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 443
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v0, v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    if-eqz v4, :cond_118

    const/4 v7, 0x1

    aget-object v0, v0, v7

    :goto_112
    aput-object v0, v1, v6

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_118
    const/4 v7, 0x2

    aget-object v0, v0, v7

    goto :goto_112

    .line 448
    :cond_11c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_142

    const/4 v0, 0x1

    .line 449
    :goto_125
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_12a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 450
    const/4 v6, 0x0

    aget-object v0, v0, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 451
    goto :goto_12a

    .line 448
    :cond_142
    const/4 v0, 0x0

    goto :goto_125

    .line 452
    :cond_144
    if-nez v1, :cond_14a

    .line 453
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    .line 455
    :cond_14a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17b

    .line 456
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, ""

    aput-object v6, v1, v3

    const/4 v3, 0x1

    const-string v6, "\u0412\u0441\u0438\u0447\u043a\u043e"

    const-string v7, "Everything"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->chipRow(Ljava/util/List;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    :cond_17b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->placement(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c5

    .line 461
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83d\udccd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {v1, v0, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 462
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 463
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    :cond_1c5
    const/4 v1, 0x0

    .line 467
    const/4 v0, 0x0

    .line 468
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->progs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    :cond_1d0
    :goto_1d0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_376

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    .line 469
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->on(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f6

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->cat:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    .line 472
    :cond_1f6
    rem-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_20c

    .line 473
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    :cond_20c
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->file:Ljava/lang/String;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libFile:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 477
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 478
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-virtual {v8, v2, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 479
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    int-to-float v9, v2

    .line 480
    if-eqz v7, :cond_342

    const/16 v2, 0x26

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/16 v10, 0xcc

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v10

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-static {v2, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_254
    invoke-static {v2, v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 482
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 483
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->file:Ljava/lang/String;

    invoke-direct {v2, p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 485
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->name(Z)Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x41700000    # 15.0f

    if-eqz v7, :cond_352

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_278
    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 486
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 487
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "%d:%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->secs:I

    div-int/lit8 v13, v13, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->secs:I

    rem-int/lit8 v13, v13, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " \u00b7 "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 489
    iget v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->hzLo:I

    iget v10, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->hzHi:I

    if-ne v2, v10, :cond_356

    iget v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->hzHi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_2c0
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " Hz \u00b7 "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->usHi:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " \u00b5s"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 490
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_392

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->parts:[Ljava/lang/String;

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_392

    .line 491
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->parts:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    invoke-virtual {v10, v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->partName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " \u00b7 "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    :goto_30a
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/high16 v9, 0x41400000    # 12.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {v2, v0, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_373

    if-nez v7, :cond_373

    const v0, 0x3ecccccd    # 0.4f

    :goto_321
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 495
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 496
    rem-int/lit8 v2, v3, 0x2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_33a

    .line 497
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 499
    :cond_33a
    invoke-virtual {v1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 501
    goto/16 :goto_1d0

    .line 481
    :cond_342
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/16 v10, 0x99

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto/16 :goto_254

    .line 485
    :cond_352
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_278

    .line 489
    :cond_356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->hzLo:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\u2013"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v10, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->hzHi:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c0

    .line 494
    :cond_373
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_321

    .line 502
    :cond_376
    rem-int/lit8 v0, v3, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_46

    if-eqz v1, :cond_46

    .line 503
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_46

    :cond_392
    move-object v0, v2

    goto/16 :goto_30a
.end method

.method fillLive()V
    .registers 11

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 569
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-array v4, v7, [Ljava/lang/String;

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v5, "Pulses"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "\u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a"

    const-string v5, "Australian current"

    .line 570
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

    .line 569
    invoke-static {v3, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 571
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 573
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 574
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 575
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 577
    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 578
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    const-string v0, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    const-string v5, "Frequency"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 581
    const-string v0, "\u0428\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v2, "Pulse width"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lUs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 582
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 583
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurstBox:Landroid/view/View;

    .line 585
    const-string v2, "\u0414\u044a\u043b\u0436\u0438\u043d\u0430 \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    const-string v3, "Burst length"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurst:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 586
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v2, "Impulse"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lWork:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 588
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 589
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRestBox:Landroid/view/View;

    .line 590
    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRest:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 591
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    .line 592
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0438 \u043a\u0430\u0442\u043e \u043c\u043e\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "Save as my program"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 594
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderLive()V

    .line 597
    return-void

    :cond_112
    move v0, v2

    .line 570
    goto/16 :goto_27
.end method

.method fillMine()V
    .registers 13

    .prologue
    .line 365
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    if-nez v0, :cond_18

    .line 367
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_158

    const-string v0, ""

    :goto_16
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 369
    :cond_18
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 370
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 371
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 372
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 373
    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 374
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

    .line 375
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v2, v1

    .line 376
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

    .line 378
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 379
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 381
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 382
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16c

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    move-object v2, v1

    :goto_a2
    const/high16 v10, 0x41800000    # 16.0f

    .line 383
    if-eqz v6, :cond_177

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_a8
    const/4 v11, 0x1

    .line 382
    invoke-static {v9, v2, v10, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
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

    .line 385
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

    .line 386
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->summary(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    .line 384
    invoke-static {v9, v1, v2, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u270e"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x30

    invoke-static {v1, v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 389
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_183

    const/4 v0, 0x1

    :goto_138
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 391
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_185

    if-nez v6, :cond_185

    const v0, 0x3ecccccd    # 0.4f

    :goto_147
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 393
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1e

    .line 367
    :cond_158
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    goto/16 :goto_16

    .line 377
    :cond_163
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_77

    .line 382
    :cond_16c
    const-string v1, "\u0411\u0435\u0437 \u0438\u043c\u0435"

    const-string v2, "Untitled"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_a2

    .line 383
    :cond_177
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_a8

    .line 385
    :cond_17b
    const-string v1, " \u0441\u0442\u044a\u043f\u043a\u0438"

    goto/16 :goto_de

    :cond_17f
    const-string v2, " steps"

    goto/16 :goto_e9

    .line 390
    :cond_183
    const/4 v0, 0x0

    goto :goto_138

    .line 392
    :cond_185
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_147

    .line 395
    :cond_188
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 396
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

    .line 399
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

    .line 400
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    :cond_1c1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v0, "\uff0b  \u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "\uff0b  New program"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1fe

    const/4 v0, 0x0

    .line 402
    :goto_1d2
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 404
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_200

    const/4 v0, 0x1

    :goto_1e3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 406
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_202

    const v0, 0x3ecccccd    # 0.4f

    :goto_1ed
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    return-void

    .line 403
    :cond_1fe
    const/4 v0, 0x2

    goto :goto_1d2

    .line 405
    :cond_200
    const/4 v0, 0x0

    goto :goto_1e3

    .line 406
    :cond_202
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1ed
.end method

.method fillMinutes()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 838
    sget-object v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->MINUTES:[I

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_63

    aget v5, v3, v2

    .line 839
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

    .line 840
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;

    invoke-direct {v0, p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-eq v5, v0, :cond_60

    const v0, 0x3ecccccd    # 0.4f

    :goto_47
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 842
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 843
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 838
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_5e
    move v0, v1

    .line 839
    goto :goto_2e

    .line 841
    :cond_60
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_47

    .line 845
    :cond_63
    return-void
.end method

.method fillPrograms()V
    .registers 14

    .prologue
    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u0438"

    const-string v4, "Ready"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u041c\u043e\u0438 \u00b7 \u0440\u044a\u0447\u043d\u043e"

    const-string v4, "Mine \u00b7 manual"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u041d\u0430 \u0436\u0438\u0432\u043e"

    const-string v4, "Live"

    .line 317
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Bluetens"

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tab()I

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    .line 316
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 318
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_6c

    const v0, 0x3ecccccd    # 0.4f

    :goto_44
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 319
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 321
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-nez v0, :cond_6f

    :cond_5f
    const/16 v0, 0x8

    :goto_61
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v0, :cond_71

    .line 323
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillLibrary()V

    .line 361
    :cond_6b
    :goto_6b
    return-void

    .line 318
    :cond_6c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_44

    .line 321
    :cond_6f
    const/4 v0, 0x0

    goto :goto_61

    .line 326
    :cond_71
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_79

    .line 327
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillLive()V

    goto :goto_6b

    .line 330
    :cond_79
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_81

    .line 331
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMine()V

    goto :goto_6b

    .line 334
    :cond_81
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v4

    .line 335
    sget-object v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->ALL:[I

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_8a
    if-ge v3, v6, :cond_6b

    aget v7, v5, v3

    .line 336
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne v7, v0, :cond_188

    const/4 v0, 0x1

    .line 337
    :goto_93
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->tint(I)I

    move-result v2

    .line 338
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 339
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 340
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

    .line 341
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v9, v1

    .line 342
    if-eqz v0, :cond_18b

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

    :goto_dc
    invoke-static {v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 345
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;

    invoke-direct {v1, p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 347
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    if-eqz v0, :cond_194

    const-string v1, "\u2713"

    :goto_f8
    const/high16 v10, 0x41600000    # 14.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v12, 0x1

    invoke-static {v9, v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 348
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    if-eqz v0, :cond_198

    move v1, v2

    :goto_109
    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x41d00000    # 26.0f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 352
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v0, :cond_1a0

    :goto_13d
    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->feel(IZ)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {v2, v7, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 354
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 356
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 357
    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v1, :cond_1a3

    if-nez v0, :cond_1a3

    const v0, 0x3ecccccd    # 0.4f

    :goto_174
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 359
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_8a

    .line 336
    :cond_188
    const/4 v0, 0x0

    goto/16 :goto_93

    .line 343
    :cond_18b
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_dc

    .line 347
    :cond_194
    const-string v1, ""

    goto/16 :goto_f8

    .line 349
    :cond_198
    const/16 v1, 0x55

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto/16 :goto_109

    .line 352
    :cond_1a0
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_13d

    .line 358
    :cond_1a3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_174
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 1101
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

    .line 1102
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    if-ne v2, p1, :cond_6

    .line 1106
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 1110
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

    .line 1111
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    if-ne v2, p1, :cond_6

    .line 1115
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method go()V
    .registers 7

    .prologue
    .line 1145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 1146
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_21

    .line 1147
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

    .line 1148
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_d

    .line 1152
    :cond_21
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v2

    .line 1153
    if-nez v2, :cond_28

    .line 1170
    :cond_27
    :goto_27
    return-void

    .line 1157
    :cond_28
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libProg()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->lok:Ljava/lang/String;

    :goto_32
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v3

    .line 1159
    const-string v0, "XLIVA"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 1160
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v0, :cond_71

    const-string v0, "XNAT"

    move-object v1, v0

    .line 1162
    :goto_41
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 1164
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 1165
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_51

    .line 1166
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0, v1, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->start(Ljava/lang/String;[B)V

    goto :goto_51

    .line 1157
    :cond_6c
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 1160
    :cond_71
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_79

    const-string v0, "XLIVA"

    move-object v1, v0

    goto :goto_41

    :cond_79
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_81

    const-string v0, "XMINE"

    move-object v1, v0

    goto :goto_41

    .line 1161
    :cond_81
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fileName(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_41

    .line 1169
    :cond_8b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_27
.end method

.method leftColumn()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    .line 303
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    .line 307
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

    .line 308
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    .line 309
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    return-object v0
.end method

.method libProg()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->find(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method libraryChip(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 562
    :goto_4
    return-void

    .line 554
    :cond_5
    if-eqz p2, :cond_2a

    .line 555
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    .line 560
    :goto_d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lib_part"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libPart:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lib_cat"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 561
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    goto :goto_4

    .line 558
    :cond_2a
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libCat:Ljava/lang/String;

    goto :goto_d
.end method

.method libraryLoaded(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;)V
    .registers 4

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libLoading:Z

    .line 526
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_8

    .line 537
    :goto_7
    return-void

    .line 529
    :cond_8
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    .line 530
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lib:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;->find(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;

    move-result-object v0

    if-nez v0, :cond_18

    .line 531
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libFile:Ljava/lang/String;

    .line 533
    :cond_18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tab()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 534
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 536
    :cond_22
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_7
.end method

.method liveApply(I)V
    .registers 8

    .prologue
    .line 692
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-nez v0, :cond_11

    .line 707
    :cond_10
    :goto_10
    return-void

    .line 695
    :cond_11
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 696
    const-wide/16 v0, 0x3a98

    cmp-long v0, v2, v0

    if-ltz v0, :cond_10

    .line 699
    const-string v0, "XLIVA"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "XLIVB"

    :goto_2e
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 700
    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v1

    .line 701
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

    .line 702
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_42

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v3, :cond_42

    .line 703
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swap(Ljava/lang/String;[B)V

    goto :goto_42

    .line 699
    :cond_67
    const-string v0, "XLIVA"

    goto :goto_2e

    .line 706
    :cond_6a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_10
.end method

.method liveChange(II)V
    .registers 8

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x1

    .line 642
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 643
    packed-switch p1, :pswitch_data_76

    .line 660
    const/16 v0, 0x1e

    iget v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 663
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveChanged()V

    .line 664
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderLive()V

    .line 665
    return-void

    .line 645
    :pswitch_1e
    const/16 v0, 0x78

    iget v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 646
    iget v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_17

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 647
    iget v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    if-lt v0, v4, :cond_41

    const/4 v0, 0x4

    :goto_3e
    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    goto :goto_17

    :cond_41
    const/4 v0, 0x6

    goto :goto_3e

    .line 651
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

    .line 654
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

    .line 657
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

    .line 643
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
    .line 669
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/16 v1, 0xe10

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 670
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_15
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    .line 672
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 673
    const-string v1, "live"

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 674
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "live_step"

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 676
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_54

    .line 677
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    :cond_54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 680
    return-void

    .line 671
    :cond_58
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_15
.end method

.method liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 9

    .prologue
    .line 600
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

    .line 601
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    const/high16 v3, 0x41b00000    # 22.0f

    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;

    invoke-direct {v4, p0, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    .line 602
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    return-object v0
.end method

.method liveKind(I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 627
    if-ne p1, v1, :cond_e

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v3

    if-ne v0, v3, :cond_10

    .line 639
    :goto_d
    return-void

    :cond_e
    move v0, v2

    .line 627
    goto :goto_5

    .line 630
    :cond_10
    if-ne p1, v1, :cond_32

    .line 631
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    .line 632
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/16 v1, 0x32

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 633
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    const/16 v2, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 637
    :goto_2b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveChanged()V

    .line 638
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    goto :goto_d

    .line 635
    :cond_32
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iput v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    goto :goto_2b
.end method

.method liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 12

    .prologue
    .line 683
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 684
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v1

    .line 685
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

    .line 686
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    return-object v0
.end method

.method liveSave()V
    .registers 6

    .prologue
    .line 710
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 711
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

    .line 712
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v1

    .line 713
    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    mul-int/lit8 v2, v2, 0x3c

    iput v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 714
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 716
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

    .line 717
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 718
    return-void
.end method

.method minimize()V
    .registers 4

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    if-eqz v0, :cond_9

    .line 271
    :cond_8
    :goto_8
    return-void

    .line 261
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    if-nez v0, :cond_1b

    .line 263
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    .line 266
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_22} :catch_2b

    .line 269
    :goto_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->show()V

    .line 270
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8

    .line 267
    :catch_2b
    move-exception v0

    goto :goto_22
.end method

.method modal()V
    .registers 6

    .prologue
    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 244
    if-nez v0, :cond_b

    .line 252
    :goto_a
    return-void

    .line 247
    :cond_b
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 248
    const/high16 v2, 0x44a00000    # 1280.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v3, 0x3f70a3d7    # 0.94f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 249
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 250
    const v2, 0x3ee66666    # 0.45f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_a
.end method

.method newMine()V
    .registers 6

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 786
    :goto_4
    return-void

    .line 782
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 783
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

    .line 784
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 785
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    goto :goto_4
.end method

.method public onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1256
    const-string v0, "str"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "bat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1257
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u043d\u0435 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The pad did not answer \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 1259
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1260
    return-void
.end method

.method public onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V
    .registers 2

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1198
    return-void
.end method

.method public onLinkState(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;I)V
    .registers 5

    .prologue
    .line 1081
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->notPad:Z

    if-eqz v0, :cond_29

    .line 1082
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1083
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 1084
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->close()V

    .line 1085
    if-eqz v0, :cond_20

    .line 1086
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1087
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1089
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_29

    .line 1090
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    .line 1093
    :cond_29
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3a

    .line 1094
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0432\u044a\u0440\u043d\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e, \u0430\u043a\u043e \u0435 \u0441\u043f\u0440\u044f\u043b\u043e."

    const-string v1, "The pad is back \u2014 start again if it stopped."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 1097
    :cond_3a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1098
    return-void
.end method

.method public onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V
    .registers 7

    .prologue
    .line 1231
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 1232
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 1233
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1234
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1235
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    .line 1236
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1246
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1247
    return-void

    .line 1237
    :cond_2a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_38

    .line 1238
    const-string v0, "\u0411\u0430\u0442\u0435\u0440\u0438\u044f\u0442\u0430 \u0441\u0432\u044a\u0440\u0448\u0438 \u2014 \u0437\u0430\u0440\u0435\u0434\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e."

    const-string v1, "Battery empty \u2014 charge the pad."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 1239
    :cond_38
    const/4 v0, 0x3

    if-ne p2, v0, :cond_46

    .line 1240
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438."

    const-string v1, "The pad switched off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 1241
    :cond_46
    const/4 v0, 0x4

    if-ne p2, v0, :cond_54

    .line 1242
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u043f\u0440\u044f \u0441 \u0433\u0440\u0435\u0448\u043a\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e."

    const-string v1, "The pad stopped with an error \u2014 start again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 1243
    :cond_54
    const/4 v0, 0x5

    if-ne p2, v0, :cond_26

    .line 1244
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

    .line 1054
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

    .line 1077
    :cond_21
    :goto_21
    return-void

    .line 1057
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

    .line 1058
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_21

    .line 1062
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

    .line 1064
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padCard(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v1

    .line 1065
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1067
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_77

    .line 1068
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1070
    :cond_77
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1072
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_94

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v1, :cond_94

    .line 1073
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 1075
    :cond_94
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->connect()V

    .line 1076
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_21

    :cond_9b
    move v3, v7

    .line 1062
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

    .line 1210
    .line 1211
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

    .line 1212
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    or-int/2addr v0, v1

    move v1, v0

    .line 1213
    goto :goto_9

    .line 1214
    :cond_1e
    if-eqz v1, :cond_42

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_42

    .line 1215
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    .line 1217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 1218
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 1219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1226
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1227
    return-void

    .line 1220
    :cond_42
    if-nez v1, :cond_3e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3e

    .line 1221
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 1222
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

    .line 1223
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 1224
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    goto :goto_3e
.end method

.method public onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V
    .registers 6

    .prologue
    .line 1202
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 1203
    if-eqz v0, :cond_13

    .line 1204
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v1, :cond_14

    :goto_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    :cond_13
    return-void

    .line 1204
    :cond_14
    const/4 p2, 0x0

    goto :goto_c
.end method

.method public onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V
    .registers 3

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1252
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

    .line 885
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;-><init>()V

    .line 886
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 887
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    .line 888
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 889
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 890
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    .line 891
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    .line 893
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 894
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 895
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    .line 896
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    .line 899
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 900
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    .line 901
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "+"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    .line 902
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 903
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    invoke-static {v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 904
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 905
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 906
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "0"

    const/high16 v4, 0x42700000    # 60.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    .line 907
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 908
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 909
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 910
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0441\u0438\u043b\u0430 \u043e\u0442 60"

    const-string v4, "strength of 60"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 911
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 912
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 913
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 914
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 916
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
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

    .line 920
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

    .line 921
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

    .line 922
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 923
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    return-object v0
.end method

.method pickLibrary(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 548
    :cond_c
    :goto_c
    return-void

    .line 543
    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libFile:Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lib_file"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 546
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 547
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_c
.end method

.method pickMine(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 766
    :cond_c
    :goto_c
    return-void

    .line 761
    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 764
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 765
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_c
.end method

.method pickMinutes(I)V
    .registers 5

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-ne p1, v0, :cond_9

    .line 1142
    :cond_8
    :goto_8
    return-void

    .line 1137
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 1138
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 1140
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 1141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8
.end method

.method pickProgram(I)V
    .registers 5

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne p1, v0, :cond_9

    .line 1131
    :cond_8
    :goto_8
    return-void

    .line 1124
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 1125
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 1126
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

    .line 1127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 1128
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 1129
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 1130
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

    .line 930
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_c

    .line 1008
    :cond_b
    :goto_b
    return-void

    .line 933
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    .line 934
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_eb

    const/4 v0, 0x0

    move-object v1, v0

    .line 935
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

    .line 937
    :goto_27
    const-wide/16 v10, 0x3e7

    add-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    .line 938
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

    .line 939
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

    .line 941
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_112

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_81
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
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

    .line 943
    :goto_9f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 944
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v2, v8, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 945
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    .line 950
    :goto_be
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_119

    .line 951
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 952
    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 953
    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v9, v14, :cond_d9

    .line 954
    add-int/lit8 v5, v5, 0x1

    .line 956
    :cond_d9
    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    or-int/2addr v4, v9

    .line 957
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    or-int/2addr v3, v0

    .line 950
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_be

    .line 934
    :cond_eb
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_15

    .line 936
    :cond_f2
    if-eqz v1, :cond_fb

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v2

    double-to-long v2, v2

    goto/16 :goto_27

    :cond_fb
    move-wide v2, v4

    goto/16 :goto_27

    .line 940
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

    .line 941
    :cond_112
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_81

    .line 942
    :cond_116
    const/4 v0, 0x0

    move v2, v0

    goto :goto_9f

    .line 959
    :cond_119
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->wasSwapping:Z

    if-eqz v0, :cond_12d

    if-nez v3, :cond_12d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_12d

    .line 960
    const-string v0, "\u2713 \u041d\u043e\u0432\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0440\u0430\u0431\u043e\u0442\u044f\u0442"

    const-string v2, "\u2713 The new values are on"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 962
    :cond_12d
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->wasSwapping:Z

    .line 963
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e8

    move v0, v6

    :goto_13a
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 964
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-nez v0, :cond_1ec

    const-string v0, "Bluetooth \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v9, "Bluetooth is off"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_1f6

    const-string v0, "\u25a0  \u0421\u043f\u0440\u0438"

    const-string v9, "\u25a0  Stop"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15c
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_200

    const/4 v0, 0x4

    .line 969
    :goto_164
    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    if-eq v0, v2, :cond_17b

    .line 970
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 971
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v10, ""

    invoke-static {v9, v10, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 973
    :cond_17b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_183

    if-lez v5, :cond_203

    if-eqz v1, :cond_203

    :cond_183
    move v2, v7

    .line 974
    :goto_184
    if-eqz v4, :cond_205

    if-nez v3, :cond_205

    move v0, v7

    .line 975
    :goto_189
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v2, :cond_207

    if-nez v0, :cond_207

    :goto_18f
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 976
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v2, :cond_209

    if-nez v0, :cond_209

    move v0, v8

    :goto_199
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 978
    if-eqz v3, :cond_20d

    .line 979
    const-string v0, "\u041f\u0440\u0438\u043b\u0430\u0433\u0430\u043c \u043d\u043e\u0432\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u2026"

    const-string v1, "Applying the new values\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    :goto_1a6
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    if-eqz v0, :cond_b

    .line 998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1be
    :goto_1be
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_271

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 1000
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v1, :cond_1be

    .line 1001
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_26d

    const-string v1, " \u00b7 "

    :goto_1da
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1be

    .line 963
    :cond_1e8
    const/16 v0, 0x8

    goto/16 :goto_13a

    .line 965
    :cond_1ec
    const-string v0, "\u0422\u044a\u0440\u0441\u044f Bluetens\u2026"

    const-string v9, "Looking for Bluetens\u2026"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14b

    .line 967
    :cond_1f6
    const-string v0, "\u25b6  \u041f\u0443\u0441\u043d\u0438"

    const-string v9, "\u25b6  Start"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15c

    :cond_200
    move v0, v6

    .line 968
    goto/16 :goto_164

    :cond_203
    move v2, v6

    .line 973
    goto :goto_184

    :cond_205
    move v0, v6

    .line 974
    goto :goto_189

    :cond_207
    move v7, v6

    .line 975
    goto :goto_18f

    .line 976
    :cond_209
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_199

    .line 980
    :cond_20d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_214

    .line 981
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_1a6

    .line 982
    :cond_214
    if-eqz v4, :cond_21f

    .line 983
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u043c \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0432 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e\u2026"

    const-string v1, "Sending the program to the pad\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a6

    .line 984
    :cond_21f
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_231

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_231

    .line 985
    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u044f\u0439 \u043e\u0442\u043b\u044f\u0432\u043e \u2014 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u043b\u0435\u0434\u0432\u0430 \u0437\u0430 \u043e\u043a\u043e\u043b\u043e \u0441\u0435\u043a\u0443\u043d\u0434\u0430."

    const-string v1, "Change the values on the left \u2014 the pad follows in about a second."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 987
    :cond_231
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_23f

    .line 988
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0441\u0438\u043b\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u0435 \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u2014 \u043d\u0435 \u0434\u043e \u0431\u043e\u043b\u043a\u0430."

    const-string v1, "Raise the strength until it feels good \u2014 never to pain."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 989
    :cond_23f
    if-nez v1, :cond_24b

    .line 990
    const-string v0, "\u041d\u0430\u043f\u0440\u0430\u0432\u0438 \u0441\u0432\u043e\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441 \uff0b \u0438\u043b\u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u043e\u0442 \u201e\u0413\u043e\u0442\u043e\u0432\u0438\u201c."

    const-string v1, "Make a program with \uff0b or pick a ready one."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 991
    :cond_24b
    if-nez v5, :cond_263

    .line 992
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_259

    const-string v0, ""

    goto/16 :goto_1a6

    :cond_259
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 994
    :cond_263
    const-string v0, "\u0421\u043b\u043e\u0436\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0438 \u043f\u0443\u0441\u043d\u0438. \u0421\u0438\u043b\u0430\u0442\u0430 \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 1."

    const-string v1, "Place the electrodes and start. Strength starts at 1."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 1001
    :cond_26d
    const-string v1, "\u26a1 "

    goto/16 :goto_1da

    .line 1004
    :cond_271
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v2, :cond_292

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentName()Ljava/lang/String;

    move-result-object v2

    .line 1006
    :goto_285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    iget-boolean v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 1004
    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_b

    :cond_292
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v2, :cond_29f

    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v4, "Done"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_285

    .line 1005
    :cond_29f
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b0

    const-string v2, "\u0422\u044a\u0440\u0441\u044f Bluetens\u2026"

    const-string v4, "Looking for Bluetens\u2026"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_285

    :cond_2b0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentName()Ljava/lang/String;

    move-result-object v2

    goto :goto_285
.end method

.method renderLive()V
    .registers 9

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 609
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-nez v0, :cond_8

    .line 624
    :goto_7
    return-void

    .line 612
    :cond_8
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 613
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v3

    .line 614
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

    .line 615
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lUs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v5, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u00b5s"

    invoke-virtual {v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurstBox:Landroid/view/View;

    if-eqz v3, :cond_e0

    move v0, v1

    :goto_35
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 617
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

    .line 618
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lWork:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string v0, "\u0431\u0435\u0437 \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "continuous"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    :goto_70
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v3, "\u043f\u043e\u0434 20 Hz"

    const-string v6, "under 20 Hz"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    :goto_7e
    invoke-virtual {v5, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRestBox:Landroid/view/View;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_104

    const v0, 0x3eb33333    # 0.35f

    :goto_8c
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 621
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

    .line 622
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

    .line 623
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10a

    :goto_d7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 614
    :cond_dc
    const-string v0, "Hz"

    goto/16 :goto_20

    :cond_e0
    move v0, v2

    .line 616
    goto/16 :goto_35

    .line 618
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

    .line 619
    :cond_fa
    const-string v3, "\u043f\u043e\u0441\u043b\u0435 \u043f\u0430\u0443\u0437\u0430"

    const-string v6, "then a pause"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7e

    .line 620
    :cond_104
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8c

    .line 622
    :cond_107
    const-string v0, ""

    goto :goto_ca

    :cond_10a
    move v1, v2

    .line 623
    goto :goto_d7
.end method

.method renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1011
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 1012
    iget-object v6, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 1013
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_b1

    move v0, v1

    .line 1014
    :goto_10
    iget-boolean v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->duo:Z

    if-eqz v3, :cond_b4

    const-string v3, "Duo"

    .line 1015
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

    .line 1016
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryPct()I

    move-result v3

    .line 1017
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

    .line 1018
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    if-ltz v3, :cond_bb

    const/16 v0, 0x19

    if-gt v3, v0, :cond_bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_64
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 1021
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v3, v8, :cond_c7

    .line 1022
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_be

    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0438 \u25cf"

    const-string v3, "Running \u25cf"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    :goto_79
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move-object v4, v0

    .line 1030
    :goto_7c
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e2

    iget v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    :goto_8e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e4

    iget v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v8, :cond_e4

    .line 1034
    :goto_9d
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e6

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a3
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1035
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1036
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1037
    return-void

    :cond_b1
    move v0, v2

    .line 1013
    goto/16 :goto_10

    .line 1014
    :cond_b4
    const-string v3, "Bluetens"

    goto/16 :goto_16

    .line 1017
    :cond_b8
    const-string v0, ""

    goto :goto_57

    .line 1018
    :cond_bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_64

    .line 1022
    :cond_be
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0430\u043d \u2713"

    const-string v3, "Connected \u2713"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 1024
    :cond_c7
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d8

    .line 1025
    const-string v0, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0430\u0434\u043d\u0430 \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v3, "Link lost \u2014 reconnecting"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1026
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move v3, v0

    goto :goto_7c

    .line 1028
    :cond_d8
    const-string v3, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v4, "Connecting\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v3, v0

    goto :goto_7c

    :cond_e2
    move v0, v2

    .line 1032
    goto :goto_8e

    :cond_e4
    move v1, v2

    .line 1033
    goto :goto_9d

    .line 1034
    :cond_e6
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_a3
.end method

.method restore()V
    .registers 3

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 287
    :goto_4
    return-void

    .line 277
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    if-eqz v0, :cond_11

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->hide()V

    .line 282
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_1c

    .line 286
    :goto_18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_4

    .line 283
    :catch_1c
    move-exception v0

    .line 284
    const-string v1, "BluetensScreen.restore"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method setTab(I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 745
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tab()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 755
    :cond_c
    :goto_c
    return-void

    .line 748
    :cond_d
    if-ne p1, v1, :cond_47

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 749
    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 750
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4b

    :goto_1b
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    .line 751
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

    const-string v1, "lib"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 752
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 753
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 754
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_c

    :cond_47
    move v0, v2

    .line 748
    goto :goto_10

    :cond_49
    move v0, v2

    .line 749
    goto :goto_16

    :cond_4b
    move v1, v2

    .line 750
    goto :goto_1b
.end method

.method show()V
    .registers 12

    .prologue
    const/4 v10, -0x2

    const/high16 v9, 0x42600000    # 56.0f

    const/high16 v8, 0x42100000    # 36.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 198
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

    .line 200
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->modal()V

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2014"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x24

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 205
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Minimize;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Minimize;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 207
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 208
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->leftColumn()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 214
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3fc66666    # 1.55f

    invoke-direct {v2, v6, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 215
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    .line 219
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    .line 221
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 231
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 234
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 235
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method startScan()V
    .registers 2

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 1050
    :goto_4
    return-void

    .line 1045
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 1046
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 1049
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_4
.end method

.method step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 7

    .prologue
    .line 1173
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 1174
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-nez v1, :cond_9

    .line 1183
    :cond_8
    :goto_8
    return-void

    .line 1177
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x3c

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1178
    iget v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    if-eq v1, v2, :cond_8

    .line 1179
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 1180
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength(I)V

    .line 1181
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method stopAll()V
    .registers 4

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 293
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v2, :cond_9

    .line 294
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_9

    .line 297
    :cond_25
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 298
    return-void
.end method

.method tab()I
    .registers 2

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_5

    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method tick()V
    .registers 5

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_9

    .line 1191
    :cond_8
    :goto_8
    return-void

    .line 1189
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method
