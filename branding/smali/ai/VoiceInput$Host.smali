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
    .line 150
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 154
    const/16 v0, 0x5a1

    if-eq p1, v0, :cond_6

    .line 180
    :cond_5
    :goto_5
    return-void

    .line 157
    :cond_6
    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->CAP:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    # getter for: Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    invoke-static {}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$200()Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    move-result-object v1

    .line 159
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/VoiceInput;->pending:Lcom/isaigu/gymapp/ai/VoiceInput$Result;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/VoiceInput;->access$202(Lcom/isaigu/gymapp/ai/VoiceInput$Result;)Lcom/isaigu/gymapp/ai/VoiceInput$Result;

    .line 160
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->dialogClosed()V

    .line 161
    if-eqz v1, :cond_5

    .line 164
    const/4 v0, -0x1

    if-ne p2, v0, :cond_23

    if-nez p3, :cond_2d

    .line 165
    :cond_23
    instance-of v0, v1, Lcom/isaigu/gymapp/ai/VoiceInput$WantsEmpty;

    if-eqz v0, :cond_5

    .line 166
    const-string v0, ""

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/ai/VoiceInput$Result;->onText(Ljava/lang/String;)V

    goto :goto_5

    .line 170
    :cond_2d
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_7a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7a

    .line 173
    const/4 v0, 0x0

    :try_start_52
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/ai/VoiceInput$Result;->onText(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5f} :catch_60

    goto :goto_5

    .line 174
    :catch_60
    move-exception v0

    .line 175
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

    .line 177
    :cond_7a
    instance-of v0, v1, Lcom/isaigu/gymapp/ai/VoiceInput$WantsEmpty;

    if-eqz v0, :cond_5

    .line 178
    const-string v0, ""

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/ai/VoiceInput$Result;->onText(Ljava/lang/String;)V

    goto :goto_5
.end method
