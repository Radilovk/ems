.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$11;
.super Ljava/lang/Object;
.source "UserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .line 572
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$11;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$11;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1200(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$11;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->updateData(Ljava/util/List;)V

    .line 575
    return-void
.end method
