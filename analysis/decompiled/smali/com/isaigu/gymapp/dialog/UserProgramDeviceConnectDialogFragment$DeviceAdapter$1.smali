.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;
.super Ljava/lang/Object;
.source "UserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->start_mac_address_timer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 937
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 938
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 939
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->val$address:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    .line 942
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v3, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1$1;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;)V

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 950
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->val$address:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->access$2400(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)V

    .line 953
    return-void

    .line 939
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
