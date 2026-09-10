.class Lcom/isaigu/gymapp/fragment/TrainFragment$10;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->startGetBatteryTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$10;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 397
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$10;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, "dataWrapperList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    if-eqz v0, :cond_2

    .line 399
    monitor-enter v0

    .line 400
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 402
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v3, :cond_0

    .line 403
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/ble/ProtocolController;->request_get_battery(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :cond_2
    return-void
.end method
