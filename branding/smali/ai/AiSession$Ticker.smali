.class final Lcom/isaigu/gymapp/ai/AiSession$Ticker;
.super Ljava/lang/Object;
.source "AiSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ticker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/ai/AiSession$1;)V
    .registers 2

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiSession$Ticker;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 413
    :try_start_0
    # invokes: Lcom/isaigu/gymapp/ai/AiSession;->tick()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->access$100()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_42

    .line 417
    :goto_3
    # getter for: Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->access$200()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_35

    # getter for: Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->access$200()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_35

    # getter for: Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->access$200()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_35

    .line 418
    # getter for: Lcom/isaigu/gymapp/ai/AiSession;->stage:Lcom/isaigu/gymapp/ai/AiSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->access$200()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_3e

    # getter for: Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->access$300()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 419
    # getter for: Lcom/isaigu/gymapp/ai/AiSession;->engine:Lcom/isaigu/gymapp/ai/AiEngine;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->access$300()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_3e

    .line 420
    :cond_35
    # getter for: Lcom/isaigu/gymapp/ai/AiSession;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->access$400()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    :cond_3e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->refresh()V

    .line 423
    return-void

    .line 414
    :catch_42
    move-exception v0

    .line 415
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
