.class final Lcom/isaigu/gymapp/ai/AiTrain$Ask;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ask"
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field final fields:Ljava/lang/String;

.field final live:Z

.field final my:I

.field final reader:Z

.field final text:Ljava/lang/String;

.field final wantPlan:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;ZZ)V
    .registers 8

    .prologue
    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    iput-boolean p7, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->reader:Z

    .line 1447
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    .line 1448
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    .line 1449
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    .line 1450
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    .line 1451
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    .line 1452
    iput-boolean p6, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->wantPlan:Z

    .line 1453
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0xa0

    const/4 v1, 0x0

    .line 1457
    const/4 v0, 0x0

    .line 1461
    :try_start_4
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    if-eqz v2, :cond_5e

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->reader:Z

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->isQuestion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const/4 v1, 0x1

    move v2, v1

    .line 1462
    :goto_16
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    .line 1463
    if-eqz v2, :cond_60

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",\"reader\":true"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1462
    :goto_2f
    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postBrief(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1464
    if-eqz v2, :cond_63

    if-eqz v1, :cond_63

    const-string v2, "\"command\":{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1465
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parseServer(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v2

    .line 1466
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    iget-boolean v3, v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    if-nez v3, :cond_63

    .line 1467
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$Commands;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    iget v5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    invoke-direct {v3, v2, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Commands;-><init>(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1486
    :goto_5d
    return-void

    :cond_5e
    move v2, v1

    .line 1461
    goto :goto_16

    .line 1463
    :cond_60
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    goto :goto_2f

    .line 1471
    :cond_63
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiCoach;->liveTurn:Z

    .line 1472
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    move-result-object v0

    .line 1473
    if-eqz v0, :cond_83

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->wantPlan:Z

    if-eqz v2, :cond_83

    .line 1474
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWorkout;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    move-result-object v2

    .line 1475
    if-eqz v2, :cond_83

    .line 1476
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$200()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;

    invoke-direct {v4, v2}, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;-><init>(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1479
    :cond_83
    if-nez v0, :cond_aa

    .line 1480
    const-string v2, "ai-train"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no reply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_9f

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_9f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_aa} :catch_bd

    .line 1485
    :cond_aa
    :goto_aa
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Answered;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Answered;-><init>(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5d

    .line 1482
    :catch_bd
    move-exception v1

    .line 1483
    const-string v2, "ai-train"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa
.end method
