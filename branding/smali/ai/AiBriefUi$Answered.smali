.class final Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;
.super Ljava/lang/Object;
.source "AiBriefUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiBriefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Answered"
.end annotation


# instance fields
.field final live:Z

.field final my:I

.field final p:Lcom/isaigu/gymapp/ai/AiBrief$Patch;

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Ljava/lang/String;IZ)V
    .registers 5

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->p:Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    .line 402
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->text:Ljava/lang/String;

    .line 403
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->my:I

    .line 404
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->live:Z

    .line 405
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 410
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->live:Z

    if-eqz v0, :cond_c

    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->p:Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiBriefUi;->doLive(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Ljava/lang/String;)V

    .line 418
    :goto_b
    return-void

    .line 413
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->p:Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->text:Ljava/lang/String;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;->my:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiBriefUi;->onPlanAnswer(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_b

    .line 415
    :catch_16
    move-exception v0

    .line 416
    const-string v1, "brief"

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
