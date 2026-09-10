.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1$1;
.super Ljava/lang/Object;
.source "UserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;

    .line 358
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1$1;->this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1$1;->this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->connectByAddress(Ljava/lang/String;)Z

    move-result v0

    .line 361
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 362
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1$1;->this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$900(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 366
    return-void

    .line 368
    :cond_0
    return-void
.end method
