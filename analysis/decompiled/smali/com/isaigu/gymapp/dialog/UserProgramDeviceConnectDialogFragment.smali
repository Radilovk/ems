.class public Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
.super Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;
.source "UserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;,
        Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;,
        Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;
    }
.end annotation


# instance fields
.field private addProgram:Landroid/widget/Button;

.field private addTrainUser:Z

.field private agevalue:Landroid/widget/TextView;

.field private back:Lcom/isaigu/gymapp/widget/MyButton;

.field private connectingAddress:Ljava/lang/String;

.field private delayTimer1:Ljava/util/Timer;

.field private delayTimer2:Ljava/util/Timer;

.field private delayTimer3:Ljava/util/Timer;

.field private delayTimer4:Ljava/util/Timer;

.field private deviceAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

.field private deviceBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private deviceListView:Landroid/support/v7/widget/RecyclerView;

.field private devicename:Landroid/widget/TextView;

.field private devicevalue:Landroid/widget/TextView;

.field private editbutton:Landroid/widget/Button;

.field private heightvalue:Landroid/widget/TextView;

.field private logoImage:Landroid/widget/ImageView;

.field private mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private ok:Landroid/widget/Button;

.field private programAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

.field private programDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;"
        }
    .end annotation
.end field

.field private programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field private programname:Landroid/widget/TextView;

.field private programvalue:Landroid/widget/TextView;

.field private reconnectCount:I

.field private searchdeviceEdittext:Landroid/widget/EditText;

.field private searchprogramEdittext:Landroid/widget/EditText;

.field private searchuserEdittext:Landroid/widget/EditText;

.field private selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

.field private selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

.field private selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

.field private swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

.field private trainUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation
.end field

.field private userAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

.field private userListView:Landroid/support/v7/widget/RecyclerView;

.field private usericon:Landroid/widget/ImageView;

.field private username:Landroid/widget/TextView;

.field private weightvalue:Landroid/widget/TextView;

.field private wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;-><init>()V

    .line 282
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$2;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 297
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$3;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 625
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->reconnectCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->updateSelectedUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->handleSelectedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer1:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer1:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->updateSelectedProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/DeviceBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/DeviceBean;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->updateSelectedDevice(Lcom/isaigu/gymapp/bean/DeviceBean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer2:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer2:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer3:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer3:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer4:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer4:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->addTrainUser:Z

    return v0
.end method

.method static synthetic access$702(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->connectingAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/bean/DeviceBean;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->handleDeviceDisconnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    return-void
.end method

.method private handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 591
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 592
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " model  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 593
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    if-eqz v2, :cond_1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDeviceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 595
    new-instance v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 596
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 597
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 598
    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 599
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 600
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 601
    new-instance v2, Lcom/isaigu/gymapp/message/DataBundle;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    invoke-static {v2}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 603
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$13;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$13;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 624
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    if-eqz v0, :cond_0

    .line 611
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 612
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 613
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$14;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$14;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleDeviceDisconnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 4
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    return-void

    const/4 v3, 0x0

    .line 627
    iget v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->reconnectCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 628
    iget v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->reconnectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->reconnectCount:I

    .line 629
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->connectingAddress:Ljava/lang/String;

    .line 631
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 632
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->connectByAddress(Ljava/lang/String;)Z

    move-result v0

    .line 633
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 634
    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$15;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/message/DataBundle;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    .line 668
    .end local v0    # "success":Z
    :cond_0
    return-void

    .line 641
    :cond_1
    iput v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->reconnectCount:I

    .line 642
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$16;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$16;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 652
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->startScan()Z

    .line 655
    :cond_2
    iput v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->reconnectCount:I

    .line 656
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$17;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$17;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 666
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->startScan()Z

    goto/16 :cond_0
.end method

.method private declared-synchronized handleDeviceDiscover(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 5
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    const-string v1, "model"

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/message/DataBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 673
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    if-eqz v0, :cond_0

    .line 674
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->discoverDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :cond_0
    monitor-exit p0

    return-void

    .line 672
    .end local v0    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleSelectedItems()V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private initData()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    invoke-direct {v1, v4}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 251
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v1, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    invoke-direct {v1, v4}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 259
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 264
    :cond_1
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 268
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    invoke-direct {v1, v4}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 272
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .line 273
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    :cond_3
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$4;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->back:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$5;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->editbutton:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$6;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->addProgram:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$7;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->searchuserEdittext:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->searchprogramEdittext:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 476
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->searchdeviceEdittext:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$10;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 496
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0f01b2

    .line 214
    const v1, 0x7f0f01b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->editbutton:Landroid/widget/Button;

    .line 215
    const v1, 0x7f0f01b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->addProgram:Landroid/widget/Button;

    .line 216
    const v1, 0x7f0f0119

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->back:Lcom/isaigu/gymapp/widget/MyButton;

    .line 217
    const v1, 0x7f0f01b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    .line 218
    const v1, 0x7f0f01b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 219
    const v1, 0x7f0f01bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    .line 221
    const v1, 0x7f0f01b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->searchuserEdittext:Landroid/widget/EditText;

    .line 222
    const v1, 0x7f0f01b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->searchprogramEdittext:Landroid/widget/EditText;

    .line 223
    const v1, 0x7f0f01bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->searchdeviceEdittext:Landroid/widget/EditText;

    .line 225
    const v1, 0x7f0f00b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    .line 227
    const v1, 0x7f0f00b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->usericon:Landroid/widget/ImageView;

    .line 228
    const v1, 0x7f0f00b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->username:Landroid/widget/TextView;

    .line 229
    const v1, 0x7f0f01b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->agevalue:Landroid/widget/TextView;

    .line 230
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->heightvalue:Landroid/widget/TextView;

    .line 231
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->weightvalue:Landroid/widget/TextView;

    .line 233
    const v1, 0x7f0f01b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->weightvalue:Landroid/widget/TextView;

    .line 234
    const v1, 0x7f0f0175

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programname:Landroid/widget/TextView;

    .line 235
    const v1, 0x7f0f0176

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programvalue:Landroid/widget/TextView;

    .line 236
    const v1, 0x7f0f00c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->devicename:Landroid/widget/TextView;

    .line 237
    const v1, 0x7f0f01ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->devicevalue:Landroid/widget/TextView;

    .line 239
    const v1, 0x7f0f00b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 240
    .local v0, "logoImage":Landroid/widget/ImageView;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 243
    :cond_0
    return-void
.end method

.method private updateSelectedDevice(Lcom/isaigu/gymapp/bean/DeviceBean;)V
    .locals 2
    .param p1, "deviceBean"    # Lcom/isaigu/gymapp/bean/DeviceBean;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 547
    if-nez p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->devicename:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->devicevalue:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->devicename:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->devicevalue:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSelectedProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 6
    .param p1, "dataBean"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 531
    if-nez p1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programname:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programvalue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 536
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programname:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programvalue:Landroid/widget/TextView;

    const v2, 0x7f0800bf

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSelectedUser(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 7
    .param p1, "user"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 503
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 504
    if-nez p1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->usericon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 506
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->username:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->agevalue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->heightvalue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->weightvalue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sample"

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v3, 0x7f03001c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v3, v6, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 517
    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->username:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 519
    .local v0, "date":Ljava/util/Date;
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->agevalue:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->heightvalue:Landroid/widget/TextView;

    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->weightvalue:Landroid/widget/TextView;

    const v3, 0x7f0800cd

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 514
    .end local v0    # "date":Ljava/util/Date;
    :cond_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    new-array v3, v6, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 519
    .restart local v0    # "date":Ljava/util/Date;
    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    iget-object v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_2
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f04006c

    return v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 3
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 558
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 559
    .local v0, "event":S
    sparse-switch v0, :sswitch_data_0

    .line 587
    :goto_0
    return-void

    .line 561
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 564
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->handleDeviceDisconnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 568
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->handleDeviceDiscover(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 571
    :sswitch_3
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    .line 572
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$11;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$11;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 579
    :sswitch_4
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    .line 580
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$12;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$12;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_3
        0x6a -> :sswitch_4
        0x3ec -> :sswitch_2
        0x3ef -> :sswitch_2
        0x3f0 -> :sswitch_1
        0x3f1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 109
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->initView(Landroid/view/View;)V

    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    const-class v6, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    .line 112
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    .line 113
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    const-class v6, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    .line 116
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->initData()V

    .line 117
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->initListener()V

    .line 119
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "add"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->addTrainUser:Z

    .line 121
    iget-boolean v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->addTrainUser:Z

    if-nez v5, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 142
    :cond_0
    iget-boolean v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->addTrainUser:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v5, :cond_4

    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, "selectUserIndex":I
    const/4 v2, 0x0

    .line 145
    .local v2, "selectProgramIndex":I
    const/4 v1, 0x0

    .line 146
    .local v1, "selectDeviceIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 147
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v8, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 148
    move v3, v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 153
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 154
    move v2, v0

    .line 158
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 159
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 160
    move v1, v0

    .line 164
    :cond_3
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->userAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    invoke-virtual {v5, v3, v10}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->setUserSelected(IZ)V

    .line 165
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->programAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    invoke-virtual {v5, v2, v10}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->setTrainProgramSelected(IZ)V

    .line 166
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-virtual {v5, v1, v10}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->setDeviceSelected(IZ)V

    .line 170
    .end local v0    # "i":I
    .end local v1    # "selectDeviceIndex":I
    .end local v2    # "selectProgramIndex":I
    .end local v3    # "selectUserIndex":I
    :cond_4
    const/16 v5, 0x3f1

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 171
    const/16 v5, 0x3f0

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 172
    const/16 v5, 0x3ef

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 173
    const/16 v5, 0x3ec

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 174
    const/16 v5, 0x69

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 175
    const/16 v5, 0x6a

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 176
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->syncBondedDevices()V

    .line 177
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    new-instance v6, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$1;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v6, v8, v9}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 210
    return-object v4

    .line 146
    .restart local v0    # "i":I
    .restart local v1    # "selectDeviceIndex":I
    .restart local v2    # "selectProgramIndex":I
    .restart local v3    # "selectUserIndex":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 152
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 680
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onDestroyView()V

    .line 681
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 682
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->stop_all_timer()V

    .line 683
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer1:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 684
    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer1:Ljava/util/Timer;

    .line 685
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer2:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 686
    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer2:Ljava/util/Timer;

    .line 687
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer3:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 688
    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer3:Ljava/util/Timer;

    .line 689
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer4:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 690
    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->delayTimer4:Ljava/util/Timer;

    .line 691
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 693
    return-void
.end method
