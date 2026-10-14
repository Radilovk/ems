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

.field mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

.field minimized:Z

.field minuteBox:Landroid/widget/LinearLayout;

.field minuteRow:Landroid/widget/LinearLayout;

.field minutes:I

.field nat:Z

.field natEntry:Ljava/lang/String;

.field natGroup:Ljava/lang/String;

.field natList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;",
            ">;"
        }
    .end annotation
.end field

.field natLoading:Z

.field natLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

.field natLokEntry:Ljava/lang/String;

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

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLokEntry:Ljava/lang/String;

    .line 134
    const-string v0, "XLIVA"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 164
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    .line 165
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_bluetens"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "program"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mine"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "mine_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "live"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "nat"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "nat_entry"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "nat_group"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "live_step"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_c2

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    :goto_ba
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    .line 177
    return-void

    .line 175
    :cond_c2
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveDefault()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v0

    goto :goto_ba
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
    .line 766
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 767
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 771
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static inGroup(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 469
    const-string v1, "g:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 470
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->group:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 475
    :cond_14
    :goto_14
    return v0

    .line 472
    :cond_15
    const-string v1, "l:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 473
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->initial(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;)C

    move-result v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_14

    const/4 v0, 0x0

    goto :goto_14
.end method

.method static initial(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;)C
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x23

    goto :goto_13
.end method

.method static liveDefault()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;
    .registers 2

    .prologue
    .line 181
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;-><init>()V

    .line 182
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 183
    const/16 v1, 0xc8

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 184
    return-object v0
.end method

.method static summary(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 776
    const/16 v3, 0x3e7

    .line 777
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

    .line 778
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 779
    iget v5, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 780
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 781
    goto :goto_b

    .line 782
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

    .line 885
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 886
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 887
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 888
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x42500000    # 52.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    .line 889
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 890
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 891
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    .line 892
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 893
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 895
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 896
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 897
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    .line 898
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 899
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    .line 900
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    return-object v0
.end method

.method currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 5

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-eqz v0, :cond_9

    .line 846
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    .line 855
    :goto_8
    return-object v0

    .line 848
    :cond_9
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_19

    .line 849
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_8

    .line 851
    :cond_19
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-nez v0, :cond_26

    .line 852
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_8

    .line 854
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 855
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    goto :goto_8

    :cond_35
    const/4 v0, 0x0

    goto :goto_8
.end method

.method currentName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-eqz v0, :cond_14

    .line 860
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->name:Ljava/lang/String;

    .line 870
    :goto_10
    return-object v0

    .line 861
    :cond_11
    const-string v0, ""

    goto :goto_10

    .line 863
    :cond_14
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_21

    .line 864
    const-string v0, "\u041d\u0430 \u0436\u0438\u0432\u043e"

    const-string v1, "Live"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 866
    :cond_21
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-nez v0, :cond_30

    .line 867
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->name(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 869
    :cond_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_3d

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    goto :goto_10

    :cond_3d
    const-string v0, ""

    goto :goto_10
.end method

.method dismissed()V
    .registers 5

    .prologue
    .line 1306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    .line 1307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    .line 1308
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    if-eqz v0, :cond_f

    .line 1309
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->hide()V

    .line 1311
    :cond_f
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    if-ne v0, p0, :cond_16

    .line 1312
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1314
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_1f

    .line 1315
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 1317
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

    .line 1318
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v2, :cond_25

    .line 1319
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_25

    .line 1322
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;-><init>(Ljava/util/List;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1323
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method editMine(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 821
    :cond_4
    :goto_4
    return-void

    .line 817
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->find(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_4

    .line 819
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    goto :goto_4
.end method

.method edited(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V
    .registers 5

    .prologue
    .line 834
    if-eqz p1, :cond_17

    .line 835
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 836
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine_id"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 838
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 839
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 840
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 841
    return-void
.end method

.method emptyCard()Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v3, 0x41b00000    # 22.0f

    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 907
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 908
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 909
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 910
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41900000    # 18.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    .line 911
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 912
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 913
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441 \u0431\u0443\u0442\u043e\u043d\u0430 \u043c\u0443. Duo \u2014 \u0432\u043a\u043b\u044e\u0447\u0438 \u0438 \u0434\u0432\u0435\u0442\u0435."

    const-string v3, "Switch the pad on with its button. Duo \u2014 switch on both."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 915
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 916
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 917
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 918
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

    .line 614
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-array v4, v7, [Ljava/lang/String;

    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v5, "Pulses"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "\u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a"

    const-string v5, "Australian current"

    .line 615
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

    .line 614
    invoke-static {v3, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 616
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 618
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 619
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 620
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 622
    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 623
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    const-string v0, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    const-string v5, "Frequency"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 626
    const-string v0, "\u0428\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v2, "Pulse width"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lUs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 627
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 628
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 629
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurstBox:Landroid/view/View;

    .line 630
    const-string v2, "\u0414\u044a\u043b\u0436\u0438\u043d\u0430 \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    const-string v3, "Burst length"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurst:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 631
    const-string v0, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v2, "Impulse"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lWork:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 632
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 633
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRestBox:Landroid/view/View;

    .line 635
    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRest:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 636
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    .line 637
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0438 \u043a\u0430\u0442\u043e \u043c\u043e\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "Save as my program"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 639
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderLive()V

    .line 642
    return-void

    :cond_112
    move v0, v2

    .line 615
    goto/16 :goto_27
.end method

.method fillMine()V
    .registers 13

    .prologue
    .line 362
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    move-result-object v0

    if-nez v0, :cond_18

    .line 364
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_158

    const-string v0, ""

    :goto_16
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 366
    :cond_18
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 367
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    .line 368
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 369
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 370
    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 371
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

    .line 372
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v2, v1

    .line 373
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

    .line 375
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 376
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 378
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 379
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16c

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->name:Ljava/lang/String;

    move-object v2, v1

    :goto_a2
    const/high16 v10, 0x41800000    # 16.0f

    .line 380
    if-eqz v6, :cond_177

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_a8
    const/4 v11, 0x1

    .line 379
    invoke-static {v9, v2, v10, v1, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
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

    .line 382
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

    .line 383
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->summary(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    .line 381
    invoke-static {v9, v1, v2, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u270e"

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v10, 0x30

    invoke-static {v1, v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 386
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_183

    const/4 v0, 0x1

    :goto_138
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 388
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_185

    if-nez v6, :cond_185

    const v0, 0x3ecccccd    # 0.4f

    :goto_147
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 390
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1e

    .line 364
    :cond_158
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    goto/16 :goto_16

    .line 374
    :cond_163
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_77

    .line 379
    :cond_16c
    const-string v1, "\u0411\u0435\u0437 \u0438\u043c\u0435"

    const-string v2, "Untitled"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_a2

    .line 380
    :cond_177
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_a8

    .line 382
    :cond_17b
    const-string v1, " \u0441\u0442\u044a\u043f\u043a\u0438"

    goto/16 :goto_de

    :cond_17f
    const-string v2, " steps"

    goto/16 :goto_e9

    .line 387
    :cond_183
    const/4 v0, 0x0

    goto :goto_138

    .line 389
    :cond_185
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_147

    .line 392
    :cond_188
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 393
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

    .line 396
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

    .line 397
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    :cond_1c1
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v0, "\uff0b  \u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "\uff0b  New program"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1fe

    const/4 v0, 0x0

    .line 399
    :goto_1d2
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 401
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_200

    const/4 v0, 0x1

    :goto_1e3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 403
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_202

    const v0, 0x3ecccccd    # 0.4f

    :goto_1ed
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    return-void

    .line 400
    :cond_1fe
    const/4 v0, 0x2

    goto :goto_1d2

    .line 402
    :cond_200
    const/4 v0, 0x0

    goto :goto_1e3

    .line 403
    :cond_202
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1ed
.end method

.method fillMinutes()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 874
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 875
    sget-object v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->MINUTES:[I

    array-length v4, v3

    move v2, v1

    :goto_a
    if-ge v2, v4, :cond_63

    aget v5, v3, v2

    .line 876
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

    .line 877
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;

    invoke-direct {v0, p0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-eq v5, v0, :cond_60

    const v0, 0x3ecccccd    # 0.4f

    :goto_47
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 879
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 880
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 875
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_5e
    move v0, v1

    .line 876
    goto :goto_2e

    .line 878
    :cond_60
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_47

    .line 882
    :cond_63
    return-void
.end method

.method fillNative()V
    .registers 21

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    if-nez v2, :cond_5f

    .line 480
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLoading:Z

    if-nez v2, :cond_1f

    .line 481
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLoading:Z

    .line 482
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Z)V

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;->start()V

    .line 484
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0427\u0435\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u043d\u0430 Bluetens\u2026"

    const-string v4, "Reading the Bluetens programs\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 486
    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    :cond_5e
    :goto_5e
    return-void

    .line 490
    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "none"

    sget-object v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->why:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 492
    const-string v2, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e Bluetens \u043d\u0435 \u0435 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u043e \u043d\u0430 \u0442\u043e\u0437\u0438 \u0442\u0430\u0431\u043b\u0435\u0442. \u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439 \u0433\u043e \u2014 \u0432\u0441\u0438\u0447\u043a\u0438\u0442\u0435 \u043c\u0443 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0441\u0435 \u043f\u043e\u044f\u0432\u044f\u0432\u0430\u0442 \u0442\u0443\u043a \u0441\u0430\u043c\u0438."

    const-string v4, "The Bluetens app is not installed on this tablet. Install it \u2014 all its programs show up here by themselves."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    :goto_7f
    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    .line 491
    invoke-static {v3, v2, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 497
    const/high16 v3, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5e

    .line 495
    :cond_b3
    const-string v2, "\u041d\u0435 \u043d\u0430\u043c\u0435\u0440\u0438\u0445 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e Bluetens."

    const-string v4, "No programs found in the Bluetens app."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7f

    .line 501
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroups()Ljava/util/List;

    move-result-object v4

    .line 502
    const/4 v2, 0x0

    .line 503
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 504
    const/4 v6, 0x1

    aget-object v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v3

    move v3, v2

    .line 505
    goto :goto_c6

    .line 506
    :cond_e0
    if-nez v3, :cond_11c

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    move-result-object v3

    .line 509
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18f

    const-string v2, ""

    :goto_f6
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    .line 510
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_fe
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 511
    if-eqz v3, :cond_fe

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->inGroup(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 512
    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    .line 517
    :cond_11c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1b1

    .line 518
    new-instance v3, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v3, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 519
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 521
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 522
    const/4 v6, 0x1

    aget-object v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 523
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v8, 0x0

    aget-object v8, v2, v8

    const v9, -0xcb2c67

    invoke-static {v7, v8, v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 524
    new-instance v8, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeGroup;

    const/4 v9, 0x1

    aget-object v2, v2, v9

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeGroup;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const/high16 v2, 0x42300000    # 44.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 526
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v2, :cond_19b

    if-nez v6, :cond_19b

    const v2, 0x3ecccccd    # 0.4f

    :goto_184
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_13c

    .line 509
    :cond_18f
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    goto/16 :goto_f6

    .line 526
    :cond_19b
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_184

    .line 529
    :cond_19e
    invoke-virtual {v3, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    :cond_1b1
    const v6, -0xcb2c67

    .line 533
    const/4 v3, 0x0

    .line 534
    const/4 v2, 0x0

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v2

    :cond_1bf
    :goto_1bf
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->inGroup(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 539
    rem-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_1f1

    .line 540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    :cond_1f1
    iget-object v4, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->entry:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 545
    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    const/high16 v10, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    const/high16 v12, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v12

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 546
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    int-to-float v10, v4

    .line 547
    if-eqz v8, :cond_31a

    const/16 v4, 0x26

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/16 v11, 0xcc

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v11

    const/high16 v12, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v12

    invoke-static {v4, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    :goto_249
    invoke-static {v4, v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 549
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 550
    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickNative;

    iget-object v10, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->entry:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickNative;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    invoke-static {v9}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v11, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->name:Ljava/lang/String;

    const/high16 v12, 0x41700000    # 15.0f

    if-eqz v8, :cond_32a

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_26f
    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v4, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 553
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 554
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    iget-wide v10, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->ms:D

    double-to-long v10, v10

    const-wide/16 v12, 0x3e7

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 556
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v14, "%d:%02d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/16 v18, 0x3c

    div-long v18, v10, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-wide/16 v18, 0x3c

    rem-long v10, v10, v18

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " \u00b7 "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 557
    iget v4, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->hzLo:I

    iget v11, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->hzHi:I

    if-ne v4, v11, :cond_32e

    iget v4, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->hzHi:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_2c6
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " Hz \u00b7 "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->usHi:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u00b5s"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    .line 556
    invoke-static {v12, v2, v4, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v2, :cond_34b

    if-nez v8, :cond_34b

    const v2, 0x3ecccccd    # 0.4f

    :goto_2f7
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 560
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 561
    rem-int/lit8 v4, v5, 0x2

    const/4 v8, 0x1

    if-ne v4, v8, :cond_312

    .line 562
    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 564
    :cond_312
    invoke-virtual {v3, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    .line 566
    goto/16 :goto_1bf

    .line 548
    :cond_31a
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/16 v11, 0x99

    invoke-static {v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    goto/16 :goto_249

    .line 552
    :cond_32a
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_26f

    .line 557
    :cond_32e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->hzLo:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "\u2013"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->hzHi:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2c6

    .line 559
    :cond_34b
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2f7

    .line 567
    :cond_34e
    rem-int/lit8 v2, v5, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5e

    if-eqz v3, :cond_5e

    .line 568
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5e
.end method

.method fillPrograms()V
    .registers 14

    .prologue
    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 313
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

    .line 314
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

    .line 313
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 315
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_6c

    const v0, 0x3ecccccd    # 0.4f

    :goto_44
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 318
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-nez v0, :cond_6f

    :cond_5f
    const/16 v0, 0x8

    :goto_61
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-eqz v0, :cond_71

    .line 320
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillNative()V

    .line 358
    :cond_6b
    :goto_6b
    return-void

    .line 315
    :cond_6c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_44

    .line 318
    :cond_6f
    const/4 v0, 0x0

    goto :goto_61

    .line 323
    :cond_71
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_79

    .line 324
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillLive()V

    goto :goto_6b

    .line 327
    :cond_79
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_81

    .line 328
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMine()V

    goto :goto_6b

    .line 331
    :cond_81
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v4

    .line 332
    sget-object v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->ALL:[I

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_8a
    if-ge v3, v6, :cond_6b

    aget v7, v5, v3

    .line 333
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne v7, v0, :cond_188

    const/4 v0, 0x1

    .line 334
    :goto_93
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->tint(I)I

    move-result v2

    .line 335
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 336
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 337
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

    .line 338
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    int-to-float v9, v1

    .line 339
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

    .line 341
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 342
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;

    invoke-direct {v1, p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 344
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    if-eqz v0, :cond_194

    const-string v1, "\u2713"

    :goto_f8
    const/high16 v10, 0x41600000    # 14.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v12, 0x1

    invoke-static {v9, v1, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 345
    const/16 v1, 0x11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 346
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

    .line 347
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-virtual {p0, v10}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x41d00000    # 26.0f

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v11

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 349
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

    .line 350
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->feel(IZ)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x41480000    # 12.5f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v11, 0x0

    invoke-static {v2, v7, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 351
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 353
    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 354
    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v1, :cond_1a3

    if-nez v0, :cond_1a3

    const v0, 0x3ecccccd    # 0.4f

    :goto_174
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 356
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_8a

    .line 333
    :cond_188
    const/4 v0, 0x0

    goto/16 :goto_93

    .line 340
    :cond_18b
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_dc

    .line 344
    :cond_194
    const-string v1, ""

    goto/16 :goto_f8

    .line 346
    :cond_198
    const/16 v1, 0x55

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    goto/16 :goto_109

    .line 349
    :cond_1a0
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_13d

    .line 355
    :cond_1a3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_174
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 1138
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

    .line 1139
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    if-ne v2, p1, :cond_6

    .line 1143
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 5

    .prologue
    .line 1147
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

    .line 1148
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    if-ne v2, p1, :cond_6

    .line 1152
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method go()V
    .registers 7

    .prologue
    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 1183
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_21

    .line 1184
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

    .line 1185
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_d

    .line 1189
    :cond_21
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v3

    .line 1190
    if-nez v3, :cond_28

    .line 1211
    :cond_27
    :goto_27
    return-void

    .line 1194
    :cond_28
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->read(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;)[B

    move-result-object v0

    move-object v2, v0

    .line 1196
    :goto_3b
    if-eqz v2, :cond_27

    .line 1200
    const-string v0, "XLIVA"

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 1201
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-eqz v0, :cond_7d

    const-string v0, "XNAT"

    move-object v1, v0

    .line 1203
    :goto_48
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    .line 1204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 1205
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_58
    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 1206
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_58

    .line 1207
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->start(Ljava/lang/String;[B)V

    goto :goto_58

    .line 1195
    :cond_73
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v0

    move-object v2, v0

    goto :goto_3b

    .line 1201
    :cond_7d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_85

    const-string v0, "XLIVA"

    move-object v1, v0

    goto :goto_48

    :cond_85
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    if-eqz v0, :cond_8d

    const-string v0, "XMINE"

    move-object v1, v0

    goto :goto_48

    .line 1202
    :cond_8d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fileName(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_48

    .line 1210
    :cond_97
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_27
.end method

.method leftColumn()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    .line 298
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    .line 300
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    .line 302
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->programList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    .line 304
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

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minuteBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    return-object v0
.end method

.method liveApply(I)V
    .registers 8

    .prologue
    .line 737
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-nez v0, :cond_11

    .line 752
    :cond_10
    :goto_10
    return-void

    .line 740
    :cond_11
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 741
    const-wide/16 v0, 0x3a98

    cmp-long v0, v2, v0

    if-ltz v0, :cond_10

    .line 744
    const-string v0, "XLIVA"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "XLIVB"

    :goto_2e
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    .line 745
    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v1

    .line 746
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

    .line 747
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_42

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v3, :cond_42

    .line 748
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveFile:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swap(Ljava/lang/String;[B)V

    goto :goto_42

    .line 744
    :cond_67
    const-string v0, "XLIVA"

    goto :goto_2e

    .line 751
    :cond_6a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_10
.end method

.method liveChange(II)V
    .registers 8

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x1

    .line 687
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 688
    packed-switch p1, :pswitch_data_76

    .line 705
    const/16 v0, 0x1e

    iget v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->restS:I

    .line 708
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveChanged()V

    .line 709
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderLive()V

    .line 710
    return-void

    .line 690
    :pswitch_1e
    const/16 v0, 0x78

    iget v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    add-int/2addr v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 691
    iget v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_17

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 692
    iget v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    if-lt v0, v4, :cond_41

    const/4 v0, 0x4

    :goto_3e
    iput v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->workS:I

    goto :goto_17

    :cond_41
    const/4 v0, 0x6

    goto :goto_3e

    .line 696
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

    .line 699
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

    .line 702
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

    .line 688
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
    .line 714
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/16 v1, 0xe10

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 715
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->safe(Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;)[Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    move-result v1

    if-eqz v1, :cond_58

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_15
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    .line 717
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 718
    const-string v1, "live"

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->id:Ljava/lang/String;

    .line 719
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "live_step"

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 721
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_54

    .line 722
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 724
    :cond_54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 725
    return-void

    .line 716
    :cond_58
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_15
.end method

.method liveField(Landroid/widget/LinearLayout;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 9

    .prologue
    .line 645
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

    .line 646
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    const/high16 v3, 0x41b00000    # 22.0f

    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;

    invoke-direct {v4, p0, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    .line 647
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    return-object v0
.end method

.method liveKind(I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 672
    if-ne p1, v1, :cond_e

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v3

    if-ne v0, v3, :cond_10

    .line 684
    :goto_d
    return-void

    :cond_e
    move v0, v2

    .line 672
    goto :goto_5

    .line 675
    :cond_10
    if-ne p1, v1, :cond_32

    .line 676
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    .line 677
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    const/16 v1, 0x32

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->hz:I

    .line 678
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    const/16 v2, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    .line 682
    :goto_2b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveChanged()V

    .line 683
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    goto :goto_d

    .line 680
    :cond_32
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    iput v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->burstMs:I

    goto :goto_2b
.end method

.method liveLok(J)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 12

    .prologue
    .line 728
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;-><init>()V

    .line 729
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v1

    .line 730
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

    .line 731
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->toLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    return-object v0
.end method

.method liveSave()V
    .registers 6

    .prologue
    .line 755
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 756
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

    .line 757
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->copy()Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    move-result-object v1

    .line 758
    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    mul-int/lit8 v2, v2, 0x3c

    iput v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->seconds:I

    .line 759
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;->steps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 761
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

    .line 762
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 763
    return-void
.end method

.method minimize()V
    .registers 4

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    if-eqz v0, :cond_9

    .line 268
    :cond_8
    :goto_8
    return-void

    .line 258
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    .line 259
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    if-nez v0, :cond_1b

    .line 260
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    .line 263
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_22} :catch_2b

    .line 266
    :goto_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->show()V

    .line 267
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8

    .line 264
    :catch_2b
    move-exception v0

    goto :goto_22
.end method

.method modal()V
    .registers 6

    .prologue
    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 241
    if-nez v0, :cond_b

    .line 249
    :goto_a
    return-void

    .line 244
    :cond_b
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 245
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

    .line 246
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 247
    const v2, 0x3ee66666    # 0.45f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 248
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_a
.end method

.method natGroups()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 426
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    .line 429
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->group:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_13

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->group:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 430
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->group:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 433
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v10, :cond_6a

    .line 434
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "g:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_68
    move-object v0, v5

    .line 461
    :goto_69
    return-object v0

    .line 439
    :cond_6a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_78
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    .line 443
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->initial(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;)C

    move-result v0

    .line 444
    if-eq v0, v1, :cond_b4

    const/16 v8, 0x28

    if-lt v4, v8, :cond_b4

    .line 445
    new-array v4, v10, [Ljava/lang/String;

    if-ne v3, v1, :cond_cc

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :goto_96
    aput-object v1, v4, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "l:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v4, v2

    .line 449
    :cond_b4
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_c8

    .line 450
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c5

    move v3, v0

    .line 453
    :cond_c5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    :cond_c8
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .line 457
    goto :goto_78

    .line 445
    :cond_cc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u2013"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_96

    .line 458
    :cond_e4
    if-lez v4, :cond_108

    .line 459
    new-array v4, v10, [Ljava/lang/String;

    if-ne v3, v1, :cond_10b

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_ee
    aput-object v0, v4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_108
    move-object v0, v5

    .line 461
    goto/16 :goto_69

    .line 459
    :cond_10b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u2013"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ee
.end method

.method natLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLokEntry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 412
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLokEntry:Ljava/lang/String;

    .line 413
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    .line 414
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->read(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;)[B

    move-result-object v0

    .line 416
    if-eqz v0, :cond_31

    :try_start_21
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    :goto_2c
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2e} :catch_33

    .line 421
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    return-object v0

    :cond_31
    move-object v0, v1

    .line 416
    goto :goto_2c

    .line 417
    :catch_33
    move-exception v0

    .line 418
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    goto :goto_2e
.end method

.method nativeLoaded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 573
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLoading:Z

    .line 574
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_8

    .line 587
    :goto_7
    return-void

    .line 577
    :cond_8
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natList:Ljava/util/List;

    .line 578
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 579
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, ""

    :goto_1a
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    .line 581
    :cond_1c
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLokEntry:Ljava/lang/String;

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natLok:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    .line 583
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    if-eqz v0, :cond_2a

    .line 584
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 586
    :cond_2a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_7

    .line 579
    :cond_2e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->entry:Ljava/lang/String;

    goto :goto_1a
.end method

.method newMine()V
    .registers 6

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_5

    .line 831
    :goto_4
    return-void

    .line 827
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->list(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 828
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

    .line 829
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;)V

    .line 830
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram;Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Listener;)V

    goto :goto_4
.end method

.method public onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1297
    const-string v0, "str"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "bat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1298
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u043d\u0435 \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The pad did not answer \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 1300
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1301
    return-void
.end method

.method public onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V
    .registers 2

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1239
    return-void
.end method

.method public onLinkState(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;I)V
    .registers 5

    .prologue
    .line 1118
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->notPad:Z

    if-eqz v0, :cond_29

    .line 1119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->skip:Ljava/util/Set;

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1120
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 1121
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->close()V

    .line 1122
    if-eqz v0, :cond_20

    .line 1123
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1124
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1126
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v0, :cond_29

    .line 1127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    .line 1130
    :cond_29
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3a

    .line 1131
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0432\u044a\u0440\u043d\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e, \u0430\u043a\u043e \u0435 \u0441\u043f\u0440\u044f\u043b\u043e."

    const-string v1, "The pad is back \u2014 start again if it stopped."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 1134
    :cond_3a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1135
    return-void
.end method

.method public onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V
    .registers 7

    .prologue
    .line 1272
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 1273
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 1274
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1275
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1276
    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    .line 1277
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->hideWarn:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1287
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1288
    return-void

    .line 1278
    :cond_2a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_38

    .line 1279
    const-string v0, "\u0411\u0430\u0442\u0435\u0440\u0438\u044f\u0442\u0430 \u0441\u0432\u044a\u0440\u0448\u0438 \u2014 \u0437\u0430\u0440\u0435\u0434\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e."

    const-string v1, "Battery empty \u2014 charge the pad."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 1280
    :cond_38
    const/4 v0, 0x3

    if-ne p2, v0, :cond_46

    .line 1281
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438."

    const-string v1, "The pad switched off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 1282
    :cond_46
    const/4 v0, 0x4

    if-ne p2, v0, :cond_54

    .line 1283
    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u043f\u0440\u044f \u0441 \u0433\u0440\u0435\u0448\u043a\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u043e\u0442\u043d\u043e\u0432\u043e."

    const-string v1, "The pad stopped with an error \u2014 start again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_26

    .line 1284
    :cond_54
    const/4 v0, 0x5

    if-ne p2, v0, :cond_26

    .line 1285
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

    .line 1091
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

    .line 1114
    :cond_21
    :goto_21
    return-void

    .line 1094
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

    .line 1095
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_21

    .line 1099
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

    .line 1101
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padCard(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v1

    .line 1102
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1104
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_77

    .line 1105
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1107
    :cond_77
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 1109
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_94

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-eqz v1, :cond_94

    .line 1110
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->stop()V

    .line 1112
    :cond_94
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->connect()V

    .line 1113
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_21

    :cond_9b
    move v3, v7

    .line 1099
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

    .line 1251
    .line 1252
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

    .line 1253
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    or-int/2addr v0, v1

    move v1, v0

    .line 1254
    goto :goto_9

    .line 1255
    :cond_1e
    if-eqz v1, :cond_42

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_42

    .line 1256
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 1257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    .line 1258
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 1259
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 1260
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1267
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1268
    return-void

    .line 1261
    :cond_42
    if-nez v1, :cond_3e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_3e

    .line 1262
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    .line 1263
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

    .line 1264
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 1265
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    goto :goto_3e
.end method

.method public onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V
    .registers 6

    .prologue
    .line 1243
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->find(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 1244
    if-eqz v0, :cond_13

    .line 1245
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v1, :cond_14

    :goto_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    :cond_13
    return-void

    .line 1245
    :cond_14
    const/4 p2, 0x0

    goto :goto_c
.end method

.method public onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V
    .registers 3

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1293
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

    .line 922
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;-><init>()V

    .line 923
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 924
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    .line 925
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 926
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 927
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    .line 928
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->name:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    .line 930
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 931
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 932
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    .line 933
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    .line 936
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 937
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2212"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    .line 938
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "+"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x40

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    .line 939
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 940
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V

    invoke-static {v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 941
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 942
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 943
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "0"

    const/high16 v4, 0x42700000    # 60.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    .line 944
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 945
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 946
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 947
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u0441\u0438\u043b\u0430 \u043e\u0442 60"

    const-string v4, "strength of 60"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 948
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 949
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 951
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 953
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
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

    .line 957
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

    .line 958
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

    .line 959
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 960
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->card:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->warn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    return-object v0
.end method

.method pickGroup(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 607
    :cond_c
    :goto_c
    return-void

    .line 604
    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natGroup:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nat_group"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 606
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    goto :goto_c
.end method

.method pickMine(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 811
    :cond_c
    :goto_c
    return-void

    .line 806
    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mineId:Ljava/lang/String;

    .line 807
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 809
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 810
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_c
.end method

.method pickMinutes(I)V
    .registers 5

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    if-ne p1, v0, :cond_9

    .line 1179
    :cond_8
    :goto_8
    return-void

    .line 1174
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 1175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 1177
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 1178
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_8
.end method

.method pickNative(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 598
    :cond_c
    :goto_c
    return-void

    .line 593
    :cond_d
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->natEntry:Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nat_entry"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 596
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 597
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_c
.end method

.method pickProgram(I)V
    .registers 5

    .prologue
    .line 1158
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne p1, v0, :cond_9

    .line 1168
    :cond_8
    :goto_8
    return-void

    .line 1161
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 1162
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->defaultMinutes(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 1163
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

    .line 1164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 1165
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 1166
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 1167
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

    .line 967
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_c

    .line 1045
    :cond_b
    :goto_b
    return-void

    .line 970
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->bg()Z

    .line 971
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_eb

    const/4 v0, 0x0

    move-object v1, v0

    .line 972
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

    .line 974
    :goto_27
    const-wide/16 v10, 0x3e7

    add-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    .line 975
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

    .line 976
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

    .line 978
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    if-eqz v0, :cond_112

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_112

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_81
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 979
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

    .line 980
    :goto_9f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 981
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sub-float v2, v8, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 982
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->barDone:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    .line 987
    :goto_be
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_119

    .line 988
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 989
    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 990
    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v9, v14, :cond_d9

    .line 991
    add-int/lit8 v5, v5, 0x1

    .line 993
    :cond_d9
    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    or-int/2addr v4, v9

    .line 994
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    or-int/2addr v3, v0

    .line 987
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_be

    .line 971
    :cond_eb
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->currentLok()Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_15

    .line 973
    :cond_f2
    if-eqz v1, :cond_fb

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v2

    double-to-long v2, v2

    goto/16 :goto_27

    :cond_fb
    move-wide v2, v4

    goto/16 :goto_27

    .line 977
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

    .line 978
    :cond_112
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_81

    .line 979
    :cond_116
    const/4 v0, 0x0

    move v2, v0

    goto :goto_9f

    .line 996
    :cond_119
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->wasSwapping:Z

    if-eqz v0, :cond_12d

    if-nez v3, :cond_12d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_12d

    .line 997
    const-string v0, "\u2713 \u041d\u043e\u0432\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0440\u0430\u0431\u043e\u0442\u044f\u0442"

    const-string v2, "\u2713 The new values are on"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 999
    :cond_12d
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->wasSwapping:Z

    .line 1000
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e8

    move v0, v6

    :goto_13a
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1001
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    if-nez v0, :cond_1ec

    const-string v0, "Bluetooth \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v9, "Bluetooth is off"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_1f6

    const-string v0, "\u25a0  \u0421\u043f\u0440\u0438"

    const-string v9, "\u25a0  Stop"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15c
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_200

    const/4 v0, 0x4

    .line 1006
    :goto_164
    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    if-eq v0, v2, :cond_17b

    .line 1007
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->goStyle:I

    .line 1008
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v10, ""

    invoke-static {v9, v10, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    :cond_17b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_183

    if-lez v5, :cond_203

    if-eqz v1, :cond_203

    :cond_183
    move v2, v7

    .line 1011
    :goto_184
    if-eqz v4, :cond_205

    if-nez v3, :cond_205

    move v0, v7

    .line 1012
    :goto_189
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v2, :cond_207

    if-nez v0, :cond_207

    :goto_18f
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1013
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v2, :cond_209

    if-nez v0, :cond_209

    move v0, v8

    :goto_199
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1015
    if-eqz v3, :cond_20d

    .line 1016
    const-string v0, "\u041f\u0440\u0438\u043b\u0430\u0433\u0430\u043c \u043d\u043e\u0432\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u2026"

    const-string v1, "Applying the new values\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    :goto_1a6
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    if-eqz v0, :cond_b

    .line 1035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
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

    .line 1037
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v1, :cond_1be

    .line 1038
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

    .line 1000
    :cond_1e8
    const/16 v0, 0x8

    goto/16 :goto_13a

    .line 1002
    :cond_1ec
    const-string v0, "\u0422\u044a\u0440\u0441\u044f Bluetens\u2026"

    const-string v9, "Looking for Bluetens\u2026"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14b

    .line 1004
    :cond_1f6
    const-string v0, "\u25b6  \u041f\u0443\u0441\u043d\u0438"

    const-string v9, "\u25b6  Start"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15c

    :cond_200
    move v0, v6

    .line 1005
    goto/16 :goto_164

    :cond_203
    move v2, v6

    .line 1010
    goto :goto_184

    :cond_205
    move v0, v6

    .line 1011
    goto :goto_189

    :cond_207
    move v7, v6

    .line 1012
    goto :goto_18f

    .line 1013
    :cond_209
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_199

    .line 1017
    :cond_20d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_214

    .line 1018
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_1a6

    .line 1019
    :cond_214
    if-eqz v4, :cond_21f

    .line 1020
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u043c \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0432 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e\u2026"

    const-string v1, "Sending the program to the pad\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a6

    .line 1021
    :cond_21f
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_231

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    if-eqz v0, :cond_231

    .line 1022
    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u044f\u0439 \u043e\u0442\u043b\u044f\u0432\u043e \u2014 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0441\u043b\u0435\u0434\u0432\u0430 \u0437\u0430 \u043e\u043a\u043e\u043b\u043e \u0441\u0435\u043a\u0443\u043d\u0434\u0430."

    const-string v1, "Change the values on the left \u2014 the pad follows in about a second."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 1024
    :cond_231
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_23f

    .line 1025
    const-string v0, "\u041a\u0430\u0447\u0432\u0430\u0439 \u0441\u0438\u043b\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u0435 \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u2014 \u043d\u0435 \u0434\u043e \u0431\u043e\u043b\u043a\u0430."

    const-string v1, "Raise the strength until it feels good \u2014 never to pain."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 1026
    :cond_23f
    if-nez v1, :cond_24b

    .line 1027
    const-string v0, "\u041d\u0430\u043f\u0440\u0430\u0432\u0438 \u0441\u0432\u043e\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441 \uff0b \u0438\u043b\u0438 \u0438\u0437\u0431\u0435\u0440\u0438 \u043e\u0442 \u201e\u0413\u043e\u0442\u043e\u0432\u0438\u201c."

    const-string v1, "Make a program with \uff0b or pick a ready one."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 1028
    :cond_24b
    if-nez v5, :cond_263

    .line 1029
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

    .line 1031
    :cond_263
    const-string v0, "\u0421\u043b\u043e\u0436\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0438 \u043f\u0443\u0441\u043d\u0438. \u0421\u0438\u043b\u0430\u0442\u0430 \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0442 1."

    const-string v1, "Place the electrodes and start. Strength starts at 1."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a6

    .line 1038
    :cond_26d
    const-string v1, "\u26a1 "

    goto/16 :goto_1da

    .line 1041
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

    .line 1043
    :goto_285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    iget-boolean v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 1041
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

    .line 1042
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

    .line 654
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-nez v0, :cond_8

    .line 669
    :goto_7
    return-void

    .line 657
    :cond_8
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveStep:Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;

    .line 658
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->aussie()Z

    move-result v3

    .line 659
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

    .line 660
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lUs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v5, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->us:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u00b5s"

    invoke-virtual {v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lBurstBox:Landroid/view/View;

    if-eqz v3, :cond_e0

    move v0, v1

    :goto_35
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 662
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

    .line 663
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lWork:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string v0, "\u0431\u0435\u0437 \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "continuous"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    :goto_70
    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string v3, "\u043f\u043e\u0434 20 Hz"

    const-string v6, "under 20 Hz"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 663
    :goto_7e
    invoke-virtual {v5, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lRestBox:Landroid/view/View;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensProgram$Step;->continuous()Z

    move-result v0

    if-eqz v0, :cond_104

    const v0, 0x3eb33333    # 0.35f

    :goto_8c
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 666
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

    .line 667
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

    .line 668
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lNote:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveWhy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10a

    :goto_d7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 659
    :cond_dc
    const-string v0, "Hz"

    goto/16 :goto_20

    :cond_e0
    move v0, v2

    .line 661
    goto/16 :goto_35

    .line 663
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

    .line 664
    :cond_fa
    const-string v3, "\u043f\u043e\u0441\u043b\u0435 \u043f\u0430\u0443\u0437\u0430"

    const-string v6, "then a pause"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7e

    .line 665
    :cond_104
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8c

    .line 667
    :cond_107
    const-string v0, ""

    goto :goto_ca

    :cond_10a
    move v1, v2

    .line 668
    goto :goto_d7
.end method

.method renderPad(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1048
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 1049
    iget-object v6, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 1050
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_b1

    move v0, v1

    .line 1051
    :goto_10
    iget-boolean v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->duo:Z

    if-eqz v3, :cond_b4

    const-string v3, "Duo"

    .line 1052
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

    .line 1053
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryPct()I

    move-result v3

    .line 1054
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

    .line 1055
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->battery:Landroid/widget/TextView;

    if-ltz v3, :cond_bb

    const/16 v0, 0x19

    if-gt v3, v0, :cond_bb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    :goto_64
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1057
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 1058
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v3, v8, :cond_c7

    .line 1059
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_be

    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0438 \u25cf"

    const-string v3, "Running \u25cf"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    :goto_79
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move-object v4, v0

    .line 1067
    :goto_7c
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1069
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e2

    iget v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    :goto_8e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_e4

    iget v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v8, :cond_e4

    .line 1071
    :goto_9d
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->control:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e6

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a3
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1072
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->minus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1073
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->plus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1074
    return-void

    :cond_b1
    move v0, v2

    .line 1050
    goto/16 :goto_10

    .line 1051
    :cond_b4
    const-string v3, "Bluetens"

    goto/16 :goto_16

    .line 1054
    :cond_b8
    const-string v0, ""

    goto :goto_57

    .line 1055
    :cond_bb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_64

    .line 1059
    :cond_be
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0430\u043d \u2713"

    const-string v3, "Connected \u2713"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 1061
    :cond_c7
    iget v3, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d8

    .line 1062
    const-string v0, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0430\u0434\u043d\u0430 \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v3, "Link lost \u2014 reconnecting"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1063
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move v3, v0

    goto :goto_7c

    .line 1065
    :cond_d8
    const-string v3, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v4, "Connecting\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v3, v0

    goto :goto_7c

    :cond_e2
    move v0, v2

    .line 1069
    goto :goto_8e

    :cond_e4
    move v1, v2

    .line 1070
    goto :goto_9d

    .line 1071
    :cond_e6
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_a3
.end method

.method restore()V
    .registers 3

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 284
    :goto_4
    return-void

    .line 274
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minimized:Z

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    if-eqz v0, :cond_11

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mini:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->hide()V

    .line 279
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_1c

    .line 283
    :goto_18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_4

    .line 280
    :catch_1c
    move-exception v0

    .line 281
    const-string v1, "BluetensScreen.restore"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method setTab(I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 790
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->tab()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 800
    :cond_c
    :goto_c
    return-void

    .line 793
    :cond_d
    if-ne p1, v1, :cond_47

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 794
    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 795
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4b

    :goto_1b
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    .line 796
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

    const-string v1, "nat"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 797
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 798
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 799
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_c

    :cond_47
    move v0, v2

    .line 793
    goto :goto_10

    :cond_49
    move v0, v2

    .line 794
    goto :goto_16

    :cond_4b
    move v1, v2

    .line 795
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

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 195
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

    .line 197
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->modal()V

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 201
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u2014"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x24

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 202
    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Minimize;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Minimize;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 205
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->close:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->leftColumn()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 211
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3fc66666    # 1.55f

    invoke-direct {v2, v6, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 212
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->clockCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    .line 216
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->padRow:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->emptyCard()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    .line 218
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->empty:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 228
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillPrograms()V

    .line 231
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->fillMinutes()V

    .line 232
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 233
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method startScan()V
    .registers 2

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 1087
    :goto_4
    return-void

    .line 1082
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 1083
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->start()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1084
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 1086
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    goto :goto_4
.end method

.method step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V
    .registers 7

    .prologue
    .line 1214
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 1215
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-nez v1, :cond_9

    .line 1224
    :cond_8
    :goto_8
    return-void

    .line 1218
    :cond_9
    const/4 v1, 0x1

    const/16 v2, 0x3c

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1219
    iget v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    if-eq v1, v2, :cond_8

    .line 1220
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 1221
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength(I)V

    .line 1222
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->value:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method stopAll()V
    .registers 4

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->hintText:Ljava/lang/String;

    .line 289
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

    .line 290
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v2, :cond_9

    .line 291
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stop()V

    goto :goto_9

    .line 294
    :cond_25
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 295
    return-void
.end method

.method tab()I
    .registers 2

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->nat:Z

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
    .line 1227
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_9

    .line 1232
    :cond_8
    :goto_8
    return-void

    .line 1230
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 1231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method
