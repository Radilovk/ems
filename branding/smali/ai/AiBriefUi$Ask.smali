.class final Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;
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
    name = "Ask"
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field final fields:Ljava/lang/String;

.field final live:Z

.field final my:I

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->c:Landroid/content/Context;

    .line 369
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->fields:Ljava/lang/String;

    .line 370
    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->text:Ljava/lang/String;

    .line 371
    iput p4, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->my:I

    .line 372
    iput-boolean p5, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->live:Z

    .line 373
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0xa0

    .line 377
    const/4 v1, 0x0

    .line 379
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->fields:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postBrief(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    move-result-object v1

    .line 381
    if-nez v1, :cond_36

    .line 382
    const-string v2, "brief"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no patch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2b

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_36} :catch_54

    :cond_36
    move-object v0, v1

    .line 387
    :goto_37
    if-nez v0, :cond_41

    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->text:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->live:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiBrief;->local(Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    move-result-object v0

    .line 390
    :cond_41
    # getter for: Lcom/isaigu/gymapp/ai/AiBriefUi;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBriefUi;->access$800()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->text:Ljava/lang/String;

    iget v4, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->my:I

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Ask;->live:Z

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiBriefUi$Answered;-><init>(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void

    .line 384
    :catch_54
    move-exception v0

    .line 385
    const-string v2, "brief"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_37
.end method
