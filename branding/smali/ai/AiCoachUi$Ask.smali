.class final Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;
.super Ljava/lang/Object;
.source "AiCoachUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiCoachUi;
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


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 5

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;->c:Landroid/content/Context;

    .line 603
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;->fields:Ljava/lang/String;

    .line 604
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;->my:I

    .line 605
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;->live:Z

    .line 606
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0xa0

    .line 610
    const/4 v0, 0x0

    .line 612
    :try_start_3
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;->fields:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postBrief(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    move-result-object v0

    .line 614
    if-nez v0, :cond_36

    .line 615
    const-string v2, "coach"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no reply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2b

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_36} :catch_47

    .line 620
    :cond_36
    :goto_36
    # getter for: Lcom/isaigu/gymapp/ai/AiCoachUi;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->access$600()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;->my:I

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;->live:Z

    invoke-direct {v2, v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;-><init>(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    return-void

    .line 617
    :catch_47
    move-exception v1

    .line 618
    const-string v2, "coach"

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

    goto :goto_36
.end method
