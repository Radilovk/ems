.class public final Lcom/isaigu/gymapp/ai/VoiceSettings;
.super Ljava/lang/Object;
.source "VoiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/VoiceSettings$Teach;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "xems_voice_settings"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 23
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/VoiceSettings;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 27
    :goto_3
    return-void

    .line 24
    :catch_4
    move-exception v0

    .line 25
    const-string v1, "VoiceSettings.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 7

    .prologue
    .line 30
    if-eqz p0, :cond_e

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    const-string v0, "ai"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 48
    :cond_e
    :goto_e
    return-void

    .line 33
    :cond_f
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_e

    .line 37
    const-string v0, "xems_voice_settings"

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/VoiceSettings;->card(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 43
    const-string v2, "xems_voice_settings"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e
.end method

.method static card(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 52
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 53
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->enrolled(Landroid/content/Context;)Z

    move-result v4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83c\udf99  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0413\u043b\u0430\u0441\u043e\u0432\u043e \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    const-string v5, "Voice control"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41900000    # 18.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v2, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    const-string v0, "\u0412 AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u0441\u043b\u0443\u0448\u0430 \u0437\u0430 \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u2026\u201c \u2014 \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u043f\u043e-\u0441\u0438\u043b\u043d\u043e \u043a\u0440\u0430\u043a\u0430\u0442\u0430\u201c, \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u043f\u0430\u0443\u0437\u0430\u201c, \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u0441\u0442\u043e\u043f\u201c. \u0414\u0443\u043c\u0430\u0442\u0430 \u201e\u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c \u043d\u0435 \u0433\u043e \u0431\u0443\u0434\u0438."

    const-string v2, "In an AI training the tablet listens for \u201c\u0422\u0440\u0435\u043d\u0435\u0440, \u2026\u201d \u2014 \u201craise the legs\u201d, \u201cpause\u201d, \u201cstop\u201d. The word \u201c\u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201d never wakes it."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    .line 58
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 55
    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 60
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 61
    if-eqz v4, :cond_c2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u041d\u0430\u0443\u0447\u0435\u043d \u043d\u0430 \u0442\u0432\u043e\u044f \u0433\u043b\u0430\u0441"

    const-string v6, "Taught your voice"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 64
    :goto_71
    if-eqz v4, :cond_cc

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 61
    :goto_75
    invoke-static {p0, v2, v8, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 65
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    if-eqz v4, :cond_cf

    const-string v0, "\u041d\u0430\u0443\u0447\u0438 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v2, "Teach again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 67
    :goto_8f
    if-eqz v4, :cond_d9

    const/4 v0, 0x2

    .line 66
    :goto_92
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/isaigu/gymapp/ai/VoiceSettings$Teach;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/VoiceSettings$Teach;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43700000    # 240.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 71
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-object v3

    .line 62
    :cond_c2
    const-string v0, "\u041e\u0449\u0435 \u043d\u0435 \u0435 \u043d\u0430\u0443\u0447\u0435\u043d \u2014 \u0440\u0430\u0431\u043e\u0442\u0438 \u0438 \u0442\u0430\u043a\u0430, \u043f\u043e-\u0442\u043e\u0447\u043d\u043e \u0435 \u0441 \u0442\u0432\u043e\u044f \u0433\u043b\u0430\u0441."

    const-string v2, "Not taught yet \u2014 it works anyway, more exact with your voice."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_71

    .line 64
    :cond_cc
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_75

    .line 67
    :cond_cf
    const-string v0, "\u041d\u0430\u0443\u0447\u0438 \u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c  \u00b7  30 \u0441"

    const-string v2, "Teach \u201c\u0422\u0440\u0435\u043d\u0435\u0440\u201d  \u00b7  30 s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_8f

    :cond_d9
    move v0, v1

    goto :goto_92
.end method
