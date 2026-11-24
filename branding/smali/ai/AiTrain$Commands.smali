.class final Lcom/isaigu/gymapp/ai/AiTrain$Commands;
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
    name = "Commands"
.end annotation


# instance fields
.field final my:I

.field final text:Ljava/lang/String;

.field final vc:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Commands;->vc:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    .line 1088
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Commands;->text:Ljava/lang/String;

    .line 1089
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Commands;->my:I

    .line 1090
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1094
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Commands;->my:I

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->seq:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$1300()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1103
    :goto_8
    return-void

    .line 1097
    :cond_9
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->access$202(Z)Z

    .line 1099
    :try_start_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Commands;->vc:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Commands;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->commandsDone(Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_8

    .line 1100
    :catch_15
    move-exception v0

    .line 1101
    const-string v1, "ai-train"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commands: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method
