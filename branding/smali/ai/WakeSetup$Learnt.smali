.class final Lcom/isaigu/gymapp/ai/WakeSetup$Learnt;
.super Ljava/lang/Object;
.source "WakeSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Learnt"
.end annotation


# instance fields
.field final ok:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learnt;->ok:Z

    .line 310
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 314
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeSetup;->training:Z

    .line 315
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 316
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_12

    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$500()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_13

    .line 323
    :cond_12
    :goto_12
    return-void

    .line 319
    :cond_13
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->head:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$500()Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learnt;->ok:Z

    if-eqz v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v3, "Done"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->sub:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$600()Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeSetup$Learnt;->ok:Z

    if-eqz v0, :cond_56

    const-string v0, "\u041a\u0430\u0437\u0432\u0430\u0439 \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u2026\u201c \u2014 \u043d\u0430\u043f\u0440. \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u0443\u0432\u0435\u043b\u0438\u0447\u0438 \u043a\u0440\u0430\u043a\u0430\u0442\u0430\u201c, \u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u043f\u0430\u0443\u0437\u0430\u201c."

    const-string v2, "Say \u201cTrainer, \u2026\u201d \u2014 e.g. \u201cTrainer, raise the legs\u201d, \u201cTrainer, pause\u201d."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 319
    :cond_4d
    const-string v0, "\u041d\u0435 \u0441\u0435 \u043f\u043e\u043b\u0443\u0447\u0438"

    const-string v2, "It did not work"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 322
    :cond_56
    const-string v0, "\u041e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a \u2014 \u201e\u041e\u0442\u043d\u0430\u0447\u0430\u043b\u043e\u201c."

    const-string v2, "Try again \u2014 \u201cStart over\u201d."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49
.end method
