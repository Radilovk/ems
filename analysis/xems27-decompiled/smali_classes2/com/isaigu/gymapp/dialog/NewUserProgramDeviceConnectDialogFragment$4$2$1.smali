.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2$1;
.super Ljava/lang/Object;
.source "NewUserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2;

    .line 429
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2$1;->this$2:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2$1;->this$2:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4$2;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->access$900(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->connect(Ljava/lang/String;)V

    .line 432
    return-void
.end method
