.class public final Lcom/isaigu/gymapp/ai/VoiceInput$Host;
.super Landroid/app/Fragment;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Host"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 81
    const/16 v0, 0x5a1

    if-eq p1, v0, :cond_6

    .line 105
    :cond_5
    :goto_5
    return-void

    .line 84
    :cond_6
    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$000()Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    move-result-object v1

    .line 85
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$002(Lcom/isaigu/gymapp/ai/VoiceInput$Result;)Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 86
    if-eqz v1, :cond_5

    .line 89
    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    if-nez p3, :cond_1f

    .line 90
    :cond_15
    instance-of v0, v1, Lcom/isaigu/gymapp/ai/VoiceInput$WantsEmpty;

    if-eqz v0, :cond_5

    .line 91
    const-string v0, ""

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/ai/VoiceInput$Result;->onText(Ljava/lang/String;)V

    goto :goto_5

    .line 95
    :cond_1f
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6c

    .line 98
    const/4 v0, 0x0

    :try_start_44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/ai/VoiceInput$Result;->onText(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_51} :catch_52

    goto :goto_5

    .line 99
    :catch_52
    move-exception v0

    .line 100
    const-string v1, "voice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 102
    :cond_6c
    instance-of v0, v1, Lcom/isaigu/gymapp/ai/VoiceInput$WantsEmpty;

    if-eqz v0, :cond_5

    .line 103
    const-string v0, ""

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/ai/VoiceInput$Result;->onText(Ljava/lang/String;)V

    goto :goto_5
.end method
