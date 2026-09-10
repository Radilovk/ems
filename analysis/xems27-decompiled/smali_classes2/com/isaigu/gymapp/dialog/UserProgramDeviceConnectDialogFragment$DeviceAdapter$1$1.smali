.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1$1;
.super Ljava/lang/Object;
.source "UserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;

    .line 942
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1$1;->this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1$1;->this$2:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->notifyDataSetChanged()V

    .line 945
    return-void
.end method
