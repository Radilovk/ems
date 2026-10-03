.class final Lcom/isaigu/gymapp/ai/AutoSession$Ticker;
.super Ljava/lang/Object;
.source "AutoSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ticker"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1095
    :try_start_2
    # invokes: Lcom/isaigu/gymapp/ai/AutoSession;->tick()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$000()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_93

    .line 1099
    :goto_5
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v3, :cond_1e

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v3, :cond_1e

    .line 1100
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1102
    :cond_1e
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v3, :cond_2e

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v3, :cond_b0

    :cond_2e
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$300()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 1103
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->paramsNow()[I

    move-result-object v3

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$400()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-eqz v0, :cond_ae

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$400()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v4, :cond_ae

    move v0, v1

    :goto_4b
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoLook;->params([IZ)V

    .line 1104
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$500()Landroid/view/View;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$300()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoLook;->apply(Landroid/view/View;Ljava/lang/String;)V

    .line 1108
    :goto_5f
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$500()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    .line 1109
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v3, :cond_b4

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$400()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 1110
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$400()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1111
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$500()Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v4, :cond_88

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v4, :cond_89

    :cond_88
    move v2, v1

    :cond_89
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->bindMainKeys(Landroid/view/View;Z)V

    .line 1115
    :goto_8c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    .line 1116
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->refresh()V

    .line 1117
    return-void

    .line 1096
    :catch_93
    move-exception v0

    .line 1097
    const-string v3, "auto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tick: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_ae
    move v0, v2

    .line 1103
    goto :goto_4b

    .line 1106
    :cond_b0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    goto :goto_5f

    .line 1113
    :cond_b4
    # invokes: Lcom/isaigu/gymapp/ai/AutoSession;->leaderRunning()Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$600()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->unbindMainKeys(Z)V

    goto :goto_8c
.end method
