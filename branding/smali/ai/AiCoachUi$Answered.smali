.class final Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;
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
    name = "Answered"
.end annotation


# instance fields
.field final live:Z

.field final my:I

.field final r:Lcom/isaigu/gymapp/ai/AiCoach$Reply;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZ)V
    .registers 4

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;->r:Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    .line 631
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;->my:I

    .line 632
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;->live:Z

    .line 633
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;->r:Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;->my:I

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;->live:Z

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiCoachUi;->onAnswer(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZ)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 642
    :goto_9
    return-void

    .line 639
    :catch_a
    move-exception v0

    .line 640
    const-string v1, "coach"

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

    goto :goto_9
.end method
