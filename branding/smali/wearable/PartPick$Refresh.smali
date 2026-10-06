.class final Lcom/isaigu/gymapp/wearable/PartPick$Refresh;
.super Ljava/lang/Object;
.source "PartPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PartPick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Refresh"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 160
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/wearable/PartPick;->frag:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_16

    # getter for: Lcom/isaigu/gymapp/wearable/PartPick;->frag:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PartPick;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 161
    :goto_10
    if-eqz v0, :cond_15

    .line 162
    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->xemsRefreshParts()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_18

    .line 167
    :cond_15
    :goto_15
    return-void

    .line 160
    :cond_16
    const/4 v0, 0x0

    goto :goto_10

    .line 164
    :catch_18
    move-exception v0

    .line 165
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "part refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method
