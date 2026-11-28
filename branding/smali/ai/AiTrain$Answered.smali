.class final Lcom/isaigu/gymapp/ai/AiTrain$Answered;
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
    name = "Answered"
.end annotation


# instance fields
.field final live:Z

.field final my:I

.field final r:Lcom/isaigu/gymapp/ai/AiCoach$Reply;

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Answered;->r:Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    .line 1664
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Answered;->my:I

    .line 1665
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Answered;->live:Z

    .line 1666
    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiTrain$Answered;->text:Ljava/lang/String;

    .line 1667
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1672
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Answered;->r:Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Answered;->my:I

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiTrain$Answered;->live:Z

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiTrain$Answered;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->onAnswer(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 1676
    :goto_b
    return-void

    .line 1673
    :catch_c
    move-exception v0

    .line 1674
    const-string v1, "ai-train"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
