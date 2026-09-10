.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NewUserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceHolder"
.end annotation


# instance fields
.field private address:Landroid/widget/TextView;

.field private deviceName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 1133
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->this$1:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .line 1134
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1135
    const v0, 0x7f09008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->deviceName:Landroid/widget/TextView;

    .line 1136
    const v0, 0x7f09008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->address:Landroid/widget/TextView;

    .line 1137
    return-void
.end method

.method static synthetic access$2600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;

    .line 1129
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->deviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;

    .line 1129
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->address:Landroid/widget/TextView;

    return-object v0
.end method
