.class public final Lcom/isaigu/gymapp/ai/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/VoiceInput$Result;,
        Lcom/isaigu/gymapp/ai/VoiceInput$Host;,
        Lcom/isaigu/gymapp/ai/VoiceInput$WantsEmpty;
    }
.end annotation


# static fields
.field static final REQ:I = 0x5a1

.field private static final TAG:Ljava/lang/String; = "xems_voice"

.field private static pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/ai/VoiceInput$Result;)Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    return-object p0
.end method

.method public static listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;)V
    .registers 4

    .prologue
    .line 36
    const-string v0, "\u041a\u0430\u0436\u0438 \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438\u043b\u0438 \u043a\u0430\u043a\u0432\u043e \u0434\u0430 \u0441\u043c\u0435\u043d\u044f\u2026"

    const-string v1, "Say something about the client or what to change\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;)Z

    .line 37
    return-void
.end method

.method public static listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v1

    .line 71
    :goto_7
    return v0

    .line 44
    :cond_8
    sput-object p1, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 46
    :try_start_a
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 47
    const-string v2, "xems_voice"

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 48
    if-nez v2, :cond_a0

    .line 49
    new-instance v2, Lcom/isaigu/gymapp/ai/VoiceInput$Host;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/VoiceInput$Host;-><init>()V

    .line 50
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "xems_voice"

    invoke-virtual {v4, v2, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 51
    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    move-object v3, v2

    .line 53
    :goto_2c
    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v5, "free_form"

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v2, "bg"

    const-string v5, "en"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "bg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    const-string v2, "bg-BG"

    .line 56
    :goto_4c
    const-string v5, "android.speech.extra.LANGUAGE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v5, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v5, "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v2, "android.speech.extra.MAX_RESULTS"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const/16 v2, 0x5a1

    invoke-virtual {v3, v4, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_6b} :catch_6c

    goto :goto_7

    .line 63
    :catch_6c
    move-exception v0

    .line 64
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 65
    const-string v2, "voice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :try_start_88
    const-string v0, "\u041d\u044f\u043c\u0430 \u0433\u043b\u0430\u0441\u043e\u0432\u043e \u0432\u044a\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 (Google)."

    const-string v2, "No speech input on this tablet (Google)."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_98} :catch_9e

    :goto_98
    move v0, v1

    .line 71
    goto/16 :goto_7

    .line 55
    :cond_9b
    :try_start_9b
    const-string v2, "en-US"
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9d} :catch_6c

    goto :goto_4c

    .line 69
    :catch_9e
    move-exception v0

    goto :goto_98

    :cond_a0
    move-object v3, v2

    goto :goto_2c
.end method
