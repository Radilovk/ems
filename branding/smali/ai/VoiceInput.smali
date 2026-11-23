.class public final Lcom/isaigu/gymapp/ai/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/VoiceInput$Result;,
        Lcom/isaigu/gymapp/ai/VoiceInput$Host;
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
    .registers 7

    .prologue
    .line 32
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 63
    :cond_4
    :goto_4
    return-void

    .line 35
    :cond_5
    sput-object p1, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 37
    :try_start_7
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 38
    const-string v0, "xems_voice"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 39
    if-nez v0, :cond_a5

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/ai/VoiceInput$Host;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/VoiceInput$Host;-><init>()V

    .line 41
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "xems_voice"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 42
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    move-object v1, v0

    .line 44
    :goto_29
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v0, "bg"

    const-string v3, "en"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "bg-BG"

    .line 47
    :goto_49
    const-string v3, "android.speech.extra.LANGUAGE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v3, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v3, "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v0, "android.speech.extra.PROMPT"

    const-string v3, "\u041a\u0430\u0436\u0438 \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438\u043b\u0438 \u043a\u0430\u043a\u0432\u043e \u0434\u0430 \u0441\u043c\u0435\u043d\u044f\u2026"

    const-string v4, "Say something about the client or what to change\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v0, "android.speech.extra.MAX_RESULTS"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const/16 v0, 0x5a1

    invoke-virtual {v1, v2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_70} :catch_71

    goto :goto_4

    .line 54
    :catch_71
    move-exception v0

    .line 55
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 56
    const-string v1, "voice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_8d
    const-string v0, "\u041d\u044f\u043c\u0430 \u0433\u043b\u0430\u0441\u043e\u0432\u043e \u0432\u044a\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 (Google)."

    const-string v1, "No speech input on this tablet (Google)."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_9d} :catch_9f

    goto/16 :goto_4

    .line 60
    :catch_9f
    move-exception v0

    goto/16 :goto_4

    .line 46
    :cond_a2
    :try_start_a2
    const-string v0, "en-US"
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a4} :catch_71

    goto :goto_49

    :cond_a5
    move-object v1, v0

    goto :goto_29
.end method
