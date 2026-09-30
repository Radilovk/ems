.class final Lcom/isaigu/gymapp/wearable/SuitReconnect$Tick;
.super Ljava/lang/Object;
.source "SuitReconnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SuitReconnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 175
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/SuitReconnect;->ticking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$002(Z)Z

    .line 177
    :try_start_4
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->step()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_15

    .line 181
    :goto_7
    # getter for: Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 182
    # invokes: Lcom/isaigu/gymapp/wearable/SuitReconnect;->tick()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->access$200()V

    .line 184
    :cond_14
    return-void

    .line 178
    :catch_15
    move-exception v0

    .line 179
    const-string v1, "suit"

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

    goto :goto_7
.end method
