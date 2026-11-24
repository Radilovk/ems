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

.field final text:Ljava/lang/String;

.field final wantPlan:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Z)V
    .registers 7

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    .line 963
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    .line 964
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    .line 965
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    .line 966
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    .line 967
    iput-boolean p6, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->wantPlan:Z

    .line 968
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0xa0

    .line 972
    const/4 v0, 0x0

    .line 974
    :try_start_3
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postBrief(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    move-result-object v0

    .line 976
    if-eqz v0, :cond_27

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->wantPlan:Z

    if-eqz v2, :cond_27

    .line 977
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWorkout;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    move-result-object v2

    .line 978
    if-eqz v2, :cond_27

    .line 979
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$1200()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;

    invoke-direct {v4, v2}, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;-><init>(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 982
    :cond_27
    if-nez v0, :cond_4e

    .line 983
    const-string v2, "ai-train"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no reply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_43

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_4e} :catch_61

    .line 988
    :cond_4e
    :goto_4e
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$1200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Answered;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Answered;-><init>(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 989
    return-void

    .line 985
    :catch_61
    move-exception v1

    .line 986
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

    goto :goto_4e
.end method
