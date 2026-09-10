.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceHolder"
.end annotation


# instance fields
.field private address:Landroid/widget/TextView;

.field private deviceName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 1045
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->this$1:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .line 1046
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1047
    const v0, 0x7f09008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->deviceName:Landroid/widget/TextView;

    .line 1048
    const v0, 0x7f09008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->address:Landroid/widget/TextView;

    .line 1049
    return-void
.end method

.method static synthetic access$2500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;

    .line 1042
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->deviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;

    .line 1042
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->address:Landroid/widget/TextView;

    return-object v0
.end method
