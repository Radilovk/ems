.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;
.super Ljava/lang/Object;
.source "NewUserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->start_mac_address_timer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .line 1013
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1015
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2400(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2400(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1017
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2400(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1018
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2400(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->val$address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2400(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    .line 1020
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1$1;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1025
    goto :goto_1

    .line 1017
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1028
    .end local v1    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1030
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->val$address:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2500(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)V

    .line 1031
    return-void
.end method
