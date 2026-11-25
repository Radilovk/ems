.class final Lcom/isaigu/gymapp/ai/VoiceInput$Cap;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cap"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->capHost:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_28

    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->capHost:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 102
    :goto_13
    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->capFragment:Landroid/app/Fragment;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$100()Landroid/app/Fragment;

    move-result-object v0

    .line 103
    # setter for: Lcom/isaigu/gymapp/ai/VoiceInput;->capHost:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 104
    # setter for: Lcom/isaigu/gymapp/ai/VoiceInput;->capFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$102(Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 105
    if-eqz v1, :cond_27

    if-eqz v0, :cond_27

    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$200()Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    move-result-object v4

    if-nez v4, :cond_2a

    .line 143
    :cond_27
    :goto_27
    return-void

    :cond_28
    move-object v1, v2

    .line 101
    goto :goto_13

    .line 108
    :cond_2a
    const-string v4, "voice"

    const-string v5, "the speech dialog closed after the time limit"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v4, 0x0

    .line 113
    :try_start_32
    const-class v5, Landroid/app/Fragment;

    const-string v6, "mWho"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 114
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    const-class v5, Landroid/app/Activity;

    const-string v6, "mEmbeddedID"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 117
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 119
    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_57} :catch_89

    .line 121
    const/16 v0, 0x5a1

    :try_start_59
    invoke-virtual {v1, v0}, Landroid/app/Activity;->finishActivity(I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_84

    .line 123
    :try_start_5c
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_89

    move v0, v3

    .line 129
    :goto_60
    if-nez v0, :cond_27

    .line 132
    :try_start_62
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const/high16 v3, 0x20020000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_73} :catch_a4

    .line 137
    :goto_73
    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$200()Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    move-result-object v0

    .line 138
    # setter for: Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$202(Lcom/isaigu/gymapp/ai/VoiceInput$Result;)Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 139
    instance-of v1, v0, Lcom/isaigu/gymapp/ai/VoiceInput$WantsEmpty;

    if-eqz v1, :cond_27

    .line 140
    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ai/VoiceInput$Result;->onText(Ljava/lang/String;)V

    goto :goto_27

    .line 123
    :catchall_84
    move-exception v0

    :try_start_85
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    throw v0
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_89} :catch_89

    .line 126
    :catch_89
    move-exception v0

    .line 127
    const-string v3, "voice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_60

    .line 135
    :catch_a4
    move-exception v0

    goto :goto_73
.end method
