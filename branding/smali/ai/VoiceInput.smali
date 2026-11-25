.class public final Lcom/isaigu/gymapp/ai/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/VoiceInput$Result;,
        Lcom/isaigu/gymapp/ai/VoiceInput$Host;,
        Lcom/isaigu/gymapp/ai/VoiceInput$Cap;,
        Lcom/isaigu/gymapp/ai/VoiceInput$WantsEmpty;
    }
.end annotation


# static fields
.field private static final CAP:Ljava/lang/Runnable;

.field private static final MAIN:Landroid/os/Handler;

.field static final REQ:I = 0x5a1

.field private static final TAG:Ljava/lang/String; = "xems_voice"

.field private static capFragment:Landroid/app/Fragment;

.field private static capHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/VoiceInput;->MAIN:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/isaigu/gymapp/ai/VoiceInput$Cap;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/VoiceInput$Cap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/VoiceInput;->CAP:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/VoiceInput;->capHost:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/isaigu/gymapp/ai/VoiceInput;->capHost:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100()Landroid/app/Fragment;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/VoiceInput;->capFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Fragment;)Landroid/app/Fragment;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/isaigu/gymapp/ai/VoiceInput;->capFragment:Landroid/app/Fragment;

    return-object p0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/ai/VoiceInput$Result;)Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/VoiceInput;->CAP:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/ai/VoiceInput;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method public static listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;)V
    .registers 4

    .prologue
    .line 38
    const-string v0, "\u041a\u0430\u0436\u0438 \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0438\u043b\u0438 \u043a\u0430\u043a\u0432\u043e \u0434\u0430 \u0441\u043c\u0435\u043d\u044f\u2026"

    const-string v1, "Say something about the client or what to change\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;)Z

    .line 39
    return-void
.end method

.method public static listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 57
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v1

    .line 93
    :cond_7
    :goto_7
    return v0

    .line 60
    :cond_8
    sput-object p1, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 61
    sget-object v2, Lcom/isaigu/gymapp/ai/VoiceInput;->MAIN:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/VoiceInput;->CAP:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 64
    const-string v2, "xems_voice"

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 65
    if-nez v2, :cond_be

    .line 66
    new-instance v2, Lcom/isaigu/gymapp/ai/VoiceInput$Host;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/VoiceInput$Host;-><init>()V

    .line 67
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "xems_voice"

    invoke-virtual {v4, v2, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 68
    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    move-object v3, v2

    .line 70
    :goto_33
    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v5, "free_form"

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v2, "bg"

    const-string v5, "en"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "bg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string v2, "bg-BG"

    .line 73
    :goto_53
    const-string v5, "android.speech.extra.LANGUAGE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v5, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v5, "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v2, "android.speech.extra.MAX_RESULTS"

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const/16 v2, 0x5a1

    invoke-virtual {v3, v4, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_7

    .line 80
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/VoiceInput;->capHost:Ljava/lang/ref/WeakReference;

    .line 81
    sput-object v3, Lcom/isaigu/gymapp/ai/VoiceInput;->capFragment:Landroid/app/Fragment;

    .line 82
    sget-object v2, Lcom/isaigu/gymapp/ai/VoiceInput;->MAIN:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/VoiceInput;->CAP:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_88} :catch_8a

    goto/16 :goto_7

    .line 85
    :catch_8a
    move-exception v0

    .line 86
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 87
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

    .line 89
    :try_start_a6
    const-string v0, "\u041d\u044f\u043c\u0430 \u0433\u043b\u0430\u0441\u043e\u0432\u043e \u0432\u044a\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 (Google)."

    const-string v2, "No speech input on this tablet (Google)."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_b6} :catch_bc

    :goto_b6
    move v0, v1

    .line 93
    goto/16 :goto_7

    .line 72
    :cond_b9
    :try_start_b9
    const-string v2, "en-US"
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bb} :catch_8a

    goto :goto_53

    .line 91
    :catch_bc
    move-exception v0

    goto :goto_b6

    :cond_be
    move-object v3, v2

    goto/16 :goto_33
.end method
