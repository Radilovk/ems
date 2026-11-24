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
    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1126
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    .line 1127
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    .line 1128
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    .line 1129
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    .line 1130
    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    .line 1131
    iput-boolean p6, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->wantPlan:Z

    .line 1132
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0xa0

    .line 1136
    const/4 v0, 0x0

    .line 1138
    :try_start_3
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    if-eqz v1, :cond_45

    .line 1140
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"kind\":\"command\",\"text\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    .line 1141
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1140
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postBrief(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->parseServer(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v1

    .line 1143
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    iget-boolean v2, v1, Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;->coach:Z

    if-nez v2, :cond_45

    .line 1144
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$Commands;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    iget v5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    invoke-direct {v3, v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Commands;-><init>(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1163
    :goto_44
    return-void

    .line 1148
    :cond_45
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->fields:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postBrief(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_69

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->wantPlan:Z

    if-eqz v2, :cond_69

    .line 1151
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWorkout;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    move-result-object v2

    .line 1152
    if-eqz v2, :cond_69

    .line 1153
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;

    invoke-direct {v4, v2}, Lcom/isaigu/gymapp/ai/AiTrain$NewPlan;-><init>(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1156
    :cond_69
    if-nez v0, :cond_90

    .line 1157
    const-string v2, "ai-train"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no reply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_85

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_90} :catch_a3

    .line 1162
    :cond_90
    :goto_90
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Answered;

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->my:I

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->live:Z

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiTrain$Ask;->text:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Answered;-><init>(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_44

    .line 1159
    :catch_a3
    move-exception v1

    .line 1160
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

    goto :goto_90
.end method
