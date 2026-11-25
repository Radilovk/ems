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
    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    iput-boolean p7, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->reader:Z

    .line 1536
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    .line 1537
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    .line 1538
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    .line 1539
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    .line 1540
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    .line 1541
    iput-boolean p6, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->wantPlan:Z

    .line 1542
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0xa0

    const/4 v1, 0x0

    .line 1546
    const/4 v0, 0x0

    .line 1550
    :try_start_4
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    if-eqz v2, :cond_66

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->reader:Z

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->isQuestion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->mayBeCommand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v1, 0x1

    move v2, v1

    .line 1551
    :goto_1e
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    .line 1552
    if-eqz v2, :cond_68

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

    .line 1551
    :goto_37
    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postBrief(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    if-eqz v2, :cond_6b

    if-eqz v1, :cond_6b

    const-string v2, "\"command\":{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1554
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parseServer(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v2

    .line 1555
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6b

    iget-boolean v3, v2, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    if-nez v3, :cond_6b

    .line 1556
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$Commands;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    iget v5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    invoke-direct {v3, v2, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Commands;-><init>(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1575
    :goto_65
    return-void

    :cond_66
    move v2, v1

    .line 1550
    goto :goto_1e

    .line 1552
    :cond_68
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    goto :goto_37

    .line 1560
    :cond_6b
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiCoach;->liveTurn:Z

    .line 1561
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_8b

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->wantPlan:Z

    if-eqz v2, :cond_8b

    .line 1563
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWorkout;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    move-result-object v2

    .line 1564
    if-eqz v2, :cond_8b

    .line 1565
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$200()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;

    invoke-direct {v4, v2}, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;-><init>(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1568
    :cond_8b
    if-nez v0, :cond_b2

    .line 1569
    const-string v2, "ai-train"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no reply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_a7

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_a7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b2} :catch_c5

    .line 1574
    :cond_b2
    :goto_b2
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Answered;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Answered;-><init>(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_65

    .line 1571
    :catch_c5
    move-exception v1

    .line 1572
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

    goto :goto_b2
.end method
