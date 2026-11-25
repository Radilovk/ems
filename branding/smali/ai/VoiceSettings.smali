.class public final Lcom/isaigu/gymapp/ai/VoiceSettings;
.super Ljava/lang/Object;
.source "VoiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;,
        Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;,
        Lcom/isaigu/gymapp/ai/VoiceSettings$Tempo;,
        Lcom/isaigu/gymapp/ai/VoiceSettings$Hear;,
        Lcom/isaigu/gymapp/ai/VoiceSettings$Teach;,
        Lcom/isaigu/gymapp/ai/VoiceSettings$Show;
    }
.end annotation


# static fields
.field static final SAMPLE_BG:Ljava/lang/String; = "\u0417\u0434\u0440\u0430\u0432\u0435\u0439! \u0410\u0437 \u0441\u044a\u043c \u0442\u0432\u043e\u044f\u0442 \u0442\u0440\u0435\u043d\u044c\u043e\u0440. \u0412\u0434\u0438\u0433\u0430\u043c \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0441 \u0435\u0434\u043d\u0430 \u0441\u0442\u044a\u043f\u043a\u0430 \u2014 \u043d\u0430\u043f\u0440\u0430\u0432\u0438 \u0434\u0435\u0441\u0435\u0442 \u0431\u0430\u0432\u043d\u0438 \u043c\u043e\u0441\u0442\u0430."

.field static final SAMPLE_EN:Ljava/lang/String; = "Hi! I am your coach. Glutes up one step \u2014 ten slow bridges, please."

.field static final TAG:Ljava/lang/String; = "xems_voice_settings"

.field static final VOICE_TAG:Ljava/lang/String; = "xems_voice_pick"

.field private static usageView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/isaigu/gymapp/ai/VoiceSettings;->usageView:Landroid/widget/TextView;

    return-object v0
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
    .registers 8

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 30
    if-eqz p0, :cond_10

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    const-string v0, "ai"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 60
    :cond_10
    :goto_10
    return-void

    .line 33
    :cond_11
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_10

    .line 37
    const-string v0, "xems_voice_settings"

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    :cond_30
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/VoiceSettings;->card(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 43
    const-string v2, "xems_voice_settings"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const-string v0, "xems_voice_pick"

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_65

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_65

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    :cond_65
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/VoiceSettings;->voiceCard(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 54
    const-string v2, "xems_voice_pick"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 55
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 58
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/VoiceSettings$Usage;-><init>(Landroid/app/Activity;)V

    const-string v2, "xems-voice-usage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_10
.end method

.method static card(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 240
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 241
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->enrolled(Landroid/content/Context;)Z

    move-result v4

    .line 242
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

    .line 243
    const-string v0, "\u0412 AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u0441\u043b\u0443\u0448\u0430 \u0437\u0430 \u201e\u041e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0435\u0440, \u2026\u201c \u2014 \u201e\u041e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0435\u0440, \u043f\u043e-\u0441\u0438\u043b\u043d\u043e \u043a\u0440\u0430\u043a\u0430\u0442\u0430\u201c, \u201e\u041e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0435\u0440, \u043f\u0430\u0443\u0437\u0430\u201c, \u201e\u041e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0435\u0440, \u0441\u0442\u043e\u043f\u201c. \u201e\u041e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c \u043d\u0435 \u0433\u043e \u0431\u0443\u0434\u0438."

    const-string v2, "In an AI training the tablet listens for \u201cOkay trainer, \u2026\u201d \u2014 \u201craise the legs\u201d, \u201cpause\u201d, \u201cstop\u201d. \u201cOkay \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201d never wakes it."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    .line 246
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 243
    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 248
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 249
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

    .line 252
    :goto_71
    if-eqz v4, :cond_cc

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 249
    :goto_75
    invoke-static {p0, v2, v8, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 253
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    if-eqz v4, :cond_cf

    const-string v0, "\u041d\u0430\u0443\u0447\u0438 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v2, "Teach again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 255
    :goto_8f
    if-eqz v4, :cond_d9

    const/4 v0, 0x2

    .line 254
    :goto_92
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/isaigu/gymapp/ai/VoiceSettings$Teach;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/VoiceSettings$Teach;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43700000    # 240.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 258
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 259
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    return-object v3

    .line 250
    :cond_c2
    const-string v0, "\u041e\u0449\u0435 \u043d\u0435 \u0435 \u043d\u0430\u0443\u0447\u0435\u043d \u2014 \u0440\u0430\u0431\u043e\u0442\u0438 \u0438 \u0442\u0430\u043a\u0430, \u043f\u043e-\u0442\u043e\u0447\u043d\u043e \u0435 \u0441 \u0442\u0432\u043e\u044f \u0433\u043b\u0430\u0441."

    const-string v2, "Not taught yet \u2014 it works anyway, more exact with your voice."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_71

    .line 252
    :cond_cc
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_75

    .line 255
    :cond_cf
    const-string v0, "\u041d\u0430\u0443\u0447\u0438 \u201e\u041e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0435\u0440\u201c  \u00b7  30 \u0441"

    const-string v2, "Teach \u201cOkay trainer\u201d  \u00b7  30 s"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_8f

    :cond_d9
    move v0, v1

    goto :goto_92
.end method

.method static group(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 127
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%,d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static refresh(Landroid/app/Activity;Z)V
    .registers 7

    .prologue
    .line 132
    if-nez p0, :cond_3

    .line 149
    :cond_2
    :goto_2
    return-void

    .line 135
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "xems_voice_pick"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/VoiceSettings;->voiceCard(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 142
    const-string v4, "xems_voice_pick"

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_38
    if-eqz p1, :cond_2

    .line 146
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->bind(Landroid/content/Context;)V

    .line 147
    const-string v0, "\u0417\u0434\u0440\u0430\u0432\u0435\u0439! \u0410\u0437 \u0441\u044a\u043c \u0442\u0432\u043e\u044f\u0442 \u0442\u0440\u0435\u043d\u044c\u043e\u0440. \u0412\u0434\u0438\u0433\u0430\u043c \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0441 \u0435\u0434\u043d\u0430 \u0441\u0442\u044a\u043f\u043a\u0430 \u2014 \u043d\u0430\u043f\u0440\u0430\u0432\u0438 \u0434\u0435\u0441\u0435\u0442 \u0431\u0430\u0432\u043d\u0438 \u043c\u043e\u0441\u0442\u0430."

    const-string v1, "Hi! I am your coach. Glutes up one step \u2014 ten slow bridges, please."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/CloudVoice;->preview(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V

    goto :goto_2
.end method

.method static usageText(Landroid/app/Activity;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 114
    const-string v0, "device"

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->voice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 115
    const-string v0, "\u0431\u0435\u0437 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u00b7 \u0431\u0435\u0437\u043f\u043b\u0430\u0442\u043d\u043e"

    const-string v1, "offline \u00b7 free"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_14
    return-object v0

    .line 117
    :cond_15
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->used(Landroid/content/Context;)I

    move-result v0

    .line 118
    if-gez v0, :cond_62

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0431\u0435\u0437\u043f\u043b\u0430\u0442\u043d\u043e \u0434\u043e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->limit(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/VoiceSettings;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0437\u043d\u0430\u043a\u0430 \u043d\u0430 \u043c\u0435\u0441\u0435\u0446"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "free up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->limit(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/VoiceSettings;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characters a month"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 122
    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0442\u043e\u0437\u0438 \u043c\u0435\u0441\u0435\u0446 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/VoiceSettings;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043e\u0442 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->limit(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/VoiceSettings;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0437\u043d\u0430\u043a\u0430"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this month "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/VoiceSettings;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->limit(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/VoiceSettings;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " characters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14
.end method

.method static voiceCard(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 16

    .prologue
    const/high16 v14, 0x42400000    # 48.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 74
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->voice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 76
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udd0a  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\u0413\u043b\u0430\u0441 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430"

    const-string v7, "The coach\'s voice"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v6, 0x41900000    # 18.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v3, v7, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/VoiceSettings;->usageText(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v2, v6, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/VoiceSettings;->usageView:Landroid/widget/TextView;

    .line 80
    sget-object v2, Lcom/isaigu/gymapp/ai/VoiceSettings;->usageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-array v6, v1, [Landroid/widget/LinearLayout;

    .line 84
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v2, 0xe

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    sget-object v7, Lcom/isaigu/gymapp/ai/CloudVoice;->VOICES:[[Ljava/lang/String;

    array-length v8, v7

    move v2, v3

    :goto_6d
    if-ge v2, v8, :cond_c1

    aget-object v9, v7, v2

    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "f"

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "\u2640  "

    :goto_83
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v10, v9, v1

    aget-object v11, v9, v12

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v10, v9, v3

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {p0, v0, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 88
    invoke-static {p0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 89
    new-instance v10, Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;

    aget-object v9, v9, v3

    const/4 v11, 0x0

    invoke-direct {v10, v9, v11}, Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    aget-object v9, v6, v3

    invoke-static {p0, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 85
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6d

    .line 86
    :cond_be
    const-string v0, "\u2642  "

    goto :goto_83

    .line 92
    :cond_c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udcf1  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0413\u043b\u0430\u0441\u044a\u0442 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u00b7 \u043e\u0444\u043b\u0430\u0439\u043d"

    const-string v7, "The tablet\'s voice \u00b7 offline"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "device"

    .line 93
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    .line 92
    invoke-static {p0, v0, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 94
    invoke-static {p0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 95
    new-instance v2, Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;

    const-string v5, "device"

    const/4 v7, 0x0

    invoke-direct {v2, v5, v7}, Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    aget-object v2, v6, v3

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 98
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 99
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 100
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->RATES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->rate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 101
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "\u041f\u043e-\u0431\u0430\u0432\u043d\u043e"

    const-string v7, "Slower"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "\u041d\u043e\u0440\u043c\u0430\u043b\u043d\u043e"

    const-string v7, "Normal"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "\u041f\u043e-\u0431\u044a\u0440\u0437\u043e"

    const-string v7, "Faster"

    .line 102
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    if-gez v0, :cond_13a

    move v0, v1

    :cond_13a
    new-instance v6, Lcom/isaigu/gymapp/ai/VoiceSettings$Tempo;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/ai/VoiceSettings$Tempo;-><init>(Landroid/app/Activity;)V

    .line 101
    invoke-static {p0, v5, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 103
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43dc0000    # 440.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u25b6  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0427\u0443\u0439"

    const-string v3, "Hear it"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/isaigu/gymapp/ai/VoiceSettings$Hear;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/VoiceSettings$Hear;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x432a0000    # 170.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-object v4
.end method
