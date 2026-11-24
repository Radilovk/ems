.class public final Lcom/isaigu/gymapp/ai/WakeSetup;
.super Ljava/lang/Object;
.source "WakeSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WakeSetup$Again;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Close;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Dismissed;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Events;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Sink;,
        Lcom/isaigu/gymapp/ai/WakeSetup$Wait;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field static final STEPS:I = 0x4

.field private static asked:Z

.field private static dialog:Landroid/app/Dialog;

.field private static dots:Landroid/widget/LinearLayout;

.field private static head:Landroid/widget/TextView;

.field private static host:Landroid/app/Activity;

.field private static step:I

.field private static sub:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 21
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    return v0
.end method

.method static synthetic access$108()I
    .registers 2

    .prologue
    .line 21
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    return v0
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 21
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->ask()V

    return-void
.end method

.method static synthetic access$300()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    return-object v0
.end method

.method private static ask()V
    .registers 9

    .prologue
    const/4 v2, 0x3

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 142
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    if-ge v0, v2, :cond_ad

    .line 143
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->record()V

    .line 144
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u0436\u0438 \u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c"

    const-string v3, "Say \u201c\u0422\u0440\u0435\u043d\u0435\u0440\u201d"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0430\u0443\u0437\u0430, \u043f\u043e\u0441\u043b\u0435 \u0434\u0443\u043c\u0430\u0442\u0430 \u0441\u0430\u043c\u0430 \u2014 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u043e\u0442 3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A pause, then the word alone \u2014 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of 3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_5f
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->dots:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v1

    .line 161
    :goto_65
    const/4 v0, 0x4

    if-ge v3, v0, :cond_134

    .line 162
    new-instance v4, Landroid/view/View;

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 163
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    if-ge v3, v0, :cond_12c

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_75
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v5, v2

    .line 164
    sget v2, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    if-ne v3, v2, :cond_130

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_82
    sget-object v6, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 163
    invoke-static {v0, v5, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 166
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 167
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeSetup;->dots:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_65

    .line 147
    :cond_ad
    sget v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    if-ne v0, v2, :cond_d1

    .line 148
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->recordContrast()V

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    const-string v2, "\u0421\u0435\u0433\u0430 \u043a\u0430\u0436\u0438 \u201e\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c"

    const-string v3, "Now say \u201c\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201d"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    const-string v2, "\u0414\u0440\u0443\u0433\u0430 \u0434\u0443\u043c\u0430 \u2014 \u0437\u0430 \u0434\u0430 \u043d\u0435 \u044f \u0431\u044a\u0440\u043a\u0430 \u0441 \u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c"

    const-string v3, "Another word \u2014 so it never takes it for \u201c\u0422\u0440\u0435\u043d\u0435\u0440\u201d"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5f

    .line 152
    :cond_d1
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->saveExamples(Landroid/content/Context;)V

    .line 153
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->spreadOfExamples()I

    move-result v0

    .line 154
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v2

    if-le v0, v2, :cond_105

    const/4 v0, 0x1

    .line 155
    :goto_e5
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    if-eqz v0, :cond_107

    const-string v2, "\u0417\u0430\u043f\u0438\u0441\u0438\u0442\u0435 \u0441\u0435 \u0440\u0430\u0437\u043b\u0438\u0447\u0430\u0432\u0430\u0442"

    const-string v4, "The recordings differ"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_f1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    if-eqz v0, :cond_123

    const-string v0, "\u041a\u0430\u0436\u0438 \u0434\u0443\u043c\u0430\u0442\u0430 \u043f\u043e-\u0435\u0434\u043d\u0430\u043a\u0432\u043e \u2014 \u201e\u041e\u0442\u043d\u0430\u0447\u0430\u043b\u043e\u201c."

    const-string v3, "Say the word more alike \u2014 \u201cStart over\u201d."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_100
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5f

    :cond_105
    move v0, v1

    .line 154
    goto :goto_e5

    .line 155
    :cond_107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2713  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v5, "Done"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f1

    .line 157
    :cond_123
    const-string v0, "\u041a\u0430\u0437\u0432\u0430\u0439 \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u2026\u201c \u2014 \u043d\u0430\u043f\u0440. \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u0443\u0432\u0435\u043b\u0438\u0447\u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430\u201c, \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u043f\u0430\u0443\u0437\u0430\u201c."

    const-string v3, "Say \u201cTrainer, \u2026\u201d \u2014 e.g. \u201cTrainer, raise the legs\u201d, \u201cTrainer, pause\u201d."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_100

    .line 163
    :cond_12c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto/16 :goto_75

    .line 164
    :cond_130
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    goto/16 :goto_82

    .line 169
    :cond_134
    return-void
.end method

.method static begin()V
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->clear()V

    .line 137
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/ai/WakeSetup;->step:I

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->ask()V

    .line 139
    return-void
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 11

    .prologue
    const/high16 v9, 0x42500000    # 52.0f

    const/high16 v6, 0x41e00000    # 28.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-nez p0, :cond_b

    .line 103
    :goto_a
    return-void

    .line 41
    :cond_b
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_82

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeSetup;->asked:Z

    if-eqz v0, :cond_82

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_82

    move v0, v1

    .line 47
    :goto_29
    const-string v3, "wake"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setup: no microphone permission, refused="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-eqz v0, :cond_84

    .line 49
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 \u201e\u041c\u0438\u043a\u0440\u043e\u0444\u043e\u043d\u201c \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438\u0442\u0435 \u043d\u0430 XEMS \u0438 \u0441\u0435 \u0432\u044a\u0440\u043d\u0438."

    const-string v2, "Allow \u201cMicrophone\u201d in XEMS\'s settings and come back."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    :try_start_52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_67} :catch_68

    goto :goto_a

    .line 55
    :catch_68
    move-exception v0

    .line 56
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_82
    move v0, v2

    .line 46
    goto :goto_29

    .line 60
    :cond_84
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeSetup;->asked:Z

    .line 61
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    .line 62
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/WakeSetup;->waitFor(Landroid/app/Activity;I)V

    goto/16 :goto_a

    .line 65
    :cond_8e
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 67
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 68
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83c\udf99  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u041d\u0430\u0443\u0447\u0438 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u043d\u0430 \u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c"

    const-string v6, "Teach the tablet \u201cTrainer\u201d"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    const-string v4, "\u0413\u043e\u0432\u043e\u0440\u0438 \u043a\u0430\u043a\u0442\u043e \u0449\u0435 \u0433\u043e\u0432\u043e\u0440\u0438\u0448 \u0432 \u0437\u0430\u043b\u0430\u0442\u0430: \u0441 \u043d\u043e\u0440\u043c\u0430\u043b\u0435\u043d \u0433\u043b\u0430\u0441, \u043e\u0442 \u043c\u044f\u0441\u0442\u043e\u0442\u043e, \u043a\u044a\u0434\u0435\u0442\u043e \u0441\u0442\u043e\u0438\u0448."

    const-string v5, "Speak as you will in the studio: a normal voice, from where you stand."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v4, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x4

    .line 73
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 71
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->dots:Landroid/widget/LinearLayout;

    .line 75
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeSetup;->dots:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const-string v4, ""

    const/high16 v5, 0x41f00000    # 30.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    .line 77
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;

    const/16 v4, 0xe

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const-string v1, ""

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v4, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    .line 80
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 83
    const-string v4, "\u041e\u0442\u043d\u0430\u0447\u0430\u043b\u043e"

    const-string v5, "Start over"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 84
    new-instance v5, Lcom/isaigu/gymapp/ai/WakeSetup$Again;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/WakeSetup$Again;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    const-string v4, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v5, "Close"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 87
    new-instance v5, Lcom/isaigu/gymapp/ai/WakeSetup$Close;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/WakeSetup$Close;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 89
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 90
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const/16 v2, 0x14

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 94
    :try_start_195
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x440c0000    # 560.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V
    :try_end_1b1
    .catch Ljava/lang/Throwable; {:try_start_195 .. :try_end_1b1} :catch_1cb

    .line 98
    :goto_1b1
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeSetup$Dismissed;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeSetup$Dismissed;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    sput-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;

    .line 100
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 101
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeSetup$Events;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeSetup$Events;-><init>()V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->beginSetup(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/WakeSetup$Sink;)V

    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->begin()V

    goto/16 :goto_a

    .line 96
    :catch_1cb
    move-exception v1

    goto :goto_1b1
.end method

.method static waitFor(Landroid/app/Activity;I)V
    .registers 6

    .prologue
    .line 110
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/ai/WakeSetup$Wait;-><init>(Landroid/app/Activity;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method
