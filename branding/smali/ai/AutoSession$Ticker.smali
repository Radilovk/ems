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
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 765
    :try_start_0
    # invokes: Lcom/isaigu/gymapp/ai/AutoSession;->tick()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$000()V

    .line 766
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_43

    .line 767
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$200()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 768
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userMin:D

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userMin:D
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_13

    .line 771
    :catch_2a
    move-exception v0

    .line 772
    const-string v1, "auto"

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

    .line 774
    :cond_43
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_5c

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_5c

    .line 775
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$300()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 777
    :cond_5c
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_6c

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_8a

    :cond_6c
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$400()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 778
    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$500()Landroid/view/View;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->access$400()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoLook;->apply(Landroid/view/View;Ljava/lang/String;)V

    .line 782
    :goto_83
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    .line 783
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->refresh()V

    .line 784
    return-void

    .line 780
    :cond_8a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    goto :goto_83
.end method
