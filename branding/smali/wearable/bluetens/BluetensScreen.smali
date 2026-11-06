.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.super Ljava/lang/Object;
.source "BluetensScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoaded;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Minimize;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveKind;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$OpenFace;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;
    }
.end annotation


# static fields
.field static final LIVE_A:Ljava/lang/String; = "XLIVA"

.field static final LIVE_B:Ljava/lang/String; = "XLIVB"

.field static final MAX_PADS:I = 0x2

.field static final PREFS:Ljava/lang/String; = "xems_bluetens"

.field static current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowed()Z
    .registers 1

    .prologue
    .line 58
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z

    move-result v0

    return v0
.end method

.method static bg()Z
    .registers 1

    .prologue
    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    return v0
.end method

.method static contraCard(Landroid/app/Activity;Z)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v2, 0x0

    .line 1731
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1732
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1733
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/16 v5, 0x88

    .line 1734
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 1733
    invoke-static {v0, v1, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1735
    if-eqz p1, :cond_91

    const-string v0, "\u041a\u043e\u0433\u0430 \u043d\u0435 \u2014 \u043f\u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0440\u0435\u0434\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    :goto_47
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v6, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1737
    if-eqz p1, :cond_94

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2022 \u041f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0434\u0435\u0444\u0438\u0431\u0440\u0438\u043b\u0430\u0442\u043e\u0440 \u0438\u043b\u0438 \u0434\u0440\u0443\u0433 \u0438\u043c\u043f\u043b\u0430\u043d\u0442 \u0441 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u0438\u043a\u0430 \u2014 \u043d\u0438\u043a\u044a\u0434\u0435 \u043f\u043e \u0442\u044f\u043b\u043e\u0442\u043e"

    aput-object v1, v0, v2

    const-string v1, "\u2022 \u0411\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442 \u2014 \u043d\u0435 \u0432\u044a\u0440\u0445\u0443 \u043a\u043e\u0440\u0435\u043c\u0430, \u043a\u0440\u044a\u0441\u0442\u0430 \u0438 \u0442\u0430\u0437\u0430"

    aput-object v1, v0, v7

    const-string v1, "\u2022 \u0415\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    aput-object v1, v0, v8

    const-string v1, "\u2022 \u0420\u0430\u043d\u0430, \u0440\u0430\u0437\u0434\u0440\u0430\u0437\u043d\u0435\u043d\u0430 \u043a\u043e\u0436\u0430, \u043e\u0431\u0440\u0438\u0432, \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435, \u043d\u0430\u043c\u0430\u043b\u0435\u043d\u0430 \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v4, "\u2022 \u0421\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "\u2022 \u041b\u0438\u0446\u0435: \u0431\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u043f\u0440\u0435\u0437 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438, \u043f\u0430\u0440\u0430\u043b\u0438\u0437\u0430 \u043d\u0430 \u043b\u0438\u0446\u0435\u0432\u0438\u044f \u043d\u0435\u0440\u0432"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "\u2022 \u041d\u0438\u043a\u043e\u0433\u0430: \u043e\u043a\u043e\u043b\u043e \u043e\u0447\u0438\u0442\u0435, \u043e\u0442\u043f\u0440\u0435\u0434 \u0438 \u043e\u0442\u0441\u0442\u0440\u0430\u043d\u0438 \u043d\u0430 \u0448\u0438\u044f\u0442\u0430, \u043f\u0440\u0435\u0437 \u0433\u044a\u0440\u0434\u0438\u0442\u0435 \u043e\u0442 \u0435\u0434\u043d\u0430\u0442\u0430 \u043a\u044a\u043c \u0434\u0440\u0443\u0433\u0430\u0442\u0430 \u0441\u0442\u0440\u0430\u043d\u0430"

    aput-object v4, v0, v1

    .line 1753
    :goto_74
    array-length v4, v0

    move v1, v2

    :goto_76
    if-ge v1, v4, :cond_b7

    aget-object v5, v0, v1

    .line 1754
    const/high16 v6, 0x41680000    # 14.5f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v5, v6, v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 1755
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1756
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1753
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 1735
    :cond_91
    const-string v0, "When not \u2014 ask before the pads go on"

    goto :goto_47

    .line 1745
    :cond_94
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2022 A pacemaker, defibrillator or other electronic implant \u2014 nowhere on the body"

    aput-object v1, v0, v2

    const-string v1, "\u2022 Pregnancy \u2014 not on the belly, lower back or pelvis"

    aput-object v1, v0, v7

    const-string v1, "\u2022 Epilepsy"

    aput-object v1, v0, v8

    const-string v1, "\u2022 A wound, irritated skin, rash, burn or reduced feeling in the area"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v4, "\u2022 Recent surgery in the area, a leg thrombosis"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "\u2022 Face: botox or filler within 2 weeks, facial palsy"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "\u2022 Never: around the eyes, the front and side of the neck, across the chest side to side"

    aput-object v4, v0, v1

    goto :goto_74

    .line 1758
    :cond_b7
    return-object v3
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->allowed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 82
    :goto_6
    return-void

    .line 66
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 67
    if-eqz v0, :cond_2b

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v1, :cond_2b

    .line 68
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    if-ne v1, p0, :cond_24

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_24

    .line 69
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->restore()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 79
    :catch_1d
    move-exception v0

    .line 80
    const-string v1, "BluetensScreen.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 73
    :cond_24
    :try_start_24
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2b} :catch_38

    .line 77
    :cond_2b
    :goto_2b
    :try_start_2b
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 78
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->show()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_37} :catch_1d

    goto :goto_6

    .line 74
    :catch_38
    move-exception v0

    goto :goto_2b
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static voice(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 86
    sget-object v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 87
    if-eqz v3, :cond_11

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v0, :cond_11

    iget-object v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    :cond_11
    const/4 v2, 0x0

    .line 103
    :cond_12
    :goto_12
    return v2

    .line 90
    :cond_13
    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 91
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_12

    .line 92
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go()V

    goto :goto_12

    .line 94
    :cond_23
    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 95
    :cond_33
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_12

    .line 96
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    goto :goto_12

    .line 98
    :cond_3b
    const-string v0, "plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "minus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 99
    :cond_4b
    iget-object v0, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 100
    const-string v1, "plus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    move v1, v2

    :goto_66
    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    goto :goto_51

    :cond_6a
    const/4 v1, -0x1

    goto :goto_66
.end method
