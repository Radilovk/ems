.class public Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
.super Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;
.source "NewUserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;,
        Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;,
        Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;
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

.field private deviceAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

.field private deviceBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

.field private programAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;

.field private programDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation
.end field

.field private userAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

.field private userListView:Landroid/support/v7/widget/RecyclerView;

.field private usericon:Landroid/widget/ImageView;

.field private username:Landroid/widget/TextView;

.field private weightvalue:Landroid/widget/TextView;

.field private wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;-><init>()V

    .line 331
    new-instance v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$2;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 346
    new-instance v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$3;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 693
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->reconnectCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->startScan()V

    return-void
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 77
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->handleDeviceDisconnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    return-void
.end method

.method static synthetic access$102(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/List;

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .line 77
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->updateSelectedUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->handleSelectedItems()V

    return-void
.end method

.method static synthetic access$2300(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 77
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->updateSelectedProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer1:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/bean/DeviceBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 77
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->updateSelectedDevice(Lcom/isaigu/gymapp/bean/DeviceBean;)V

    return-void
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer1:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer2:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer2:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer3:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer3:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer4:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer4:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->addTrainUser:Z

    return v0
.end method

.method static synthetic access$802(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->connectingAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/bean/DeviceBean;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    return-object v0
.end method

.method private handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 658
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 659
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " model  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 660
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    if-eqz v1, :cond_0

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 662
    new-instance v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 663
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 664
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 665
    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 666
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 667
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 668
    new-instance v2, Lcom/isaigu/gymapp/message/DataBundle;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v1}, Lcom/isaigu/gymapp/message/DataBundle;-><init>(SLjava/lang/Object;)V

    invoke-static {v2}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 670
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$13;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$13;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 676
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    goto :goto_0

    .line 677
    :cond_0
    if-eqz v0, :cond_1

    .line 678
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ble/AndroidBleController;->disconnectByAddress(Ljava/lang/String;)Z

    .line 679
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 680
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$14;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$14;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 691
    :cond_1
    :goto_0
    return-void
.end method

.method private handleDeviceDisconnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 4
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 696
    iget v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->reconnectCount:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 697
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->reconnectCount:I

    .line 698
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->connectingAddress:Ljava/lang/String;

    .line 700
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 701
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ble/AndroidBleController;->connectByAddress(Ljava/lang/String;)Z

    move-result v0

    .line 702
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 703
    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$15;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Lcom/isaigu/gymapp/message/DataBundle;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    .line 709
    .end local v0    # "success":Z
    :cond_0
    goto :goto_0

    .line 710
    :cond_1
    iput v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->reconnectCount:I

    .line 711
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$16;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$16;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->startScan()V

    goto :goto_0

    .line 724
    :cond_2
    iput v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->reconnectCount:I

    .line 725
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$17;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$17;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 735
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->startScan()V

    .line 737
    :goto_0
    return-void
.end method

.method private declared-synchronized handleDeviceDiscover(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 4
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    monitor-enter p0

    .line 741
    :try_start_0
    const-string v0, "model"

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/message/DataBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 742
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->discoverDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    .end local p0    # "this":Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    :cond_0
    monitor-exit p0

    return-void

    .line 740
    .end local v0    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .end local p1    # "bundle":Lcom/isaigu/gymapp/message/DataBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleSelectedItems()V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1148
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 300
    new-instance v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    invoke-direct {v0, p0, v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    .line 301
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v3, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 313
    :cond_1
    new-instance v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    invoke-direct {v0, p0, v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;

    .line 314
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v3, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    invoke-direct {v1, v4}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 321
    new-instance v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .line 322
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 324
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    :cond_3
    return-void
.end method

.method private initListener()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$4;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->back:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$5;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->editbutton:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$6;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->addProgram:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$7;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->searchuserEdittext:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$8;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$8;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 513
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->searchprogramEdittext:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$9;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$9;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 536
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->searchdeviceEdittext:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$10;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$10;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 560
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 263
    const v0, 0x7f090094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->editbutton:Landroid/widget/Button;

    .line 264
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->addProgram:Landroid/widget/Button;

    .line 265
    const v0, 0x7f090046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->back:Lcom/isaigu/gymapp/widget/MyButton;

    .line 266
    const v0, 0x7f0901d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userListView:Landroid/support/v7/widget/RecyclerView;

    .line 267
    const v0, 0x7f09013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 268
    const v0, 0x7f09008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceListView:Landroid/support/v7/widget/RecyclerView;

    .line 270
    const v0, 0x7f09016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->searchuserEdittext:Landroid/widget/EditText;

    .line 271
    const v0, 0x7f09016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->searchprogramEdittext:Landroid/widget/EditText;

    .line 272
    const v0, 0x7f09016b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->searchdeviceEdittext:Landroid/widget/EditText;

    .line 274
    const v0, 0x7f090112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->ok:Landroid/widget/Button;

    .line 276
    const v0, 0x7f0901cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->usericon:Landroid/widget/ImageView;

    .line 277
    const v0, 0x7f0901d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->username:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f090036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->agevalue:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f0900b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->heightvalue:Landroid/widget/TextView;

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->weightvalue:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0901fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->weightvalue:Landroid/widget/TextView;

    .line 283
    const v0, 0x7f09013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programname:Landroid/widget/TextView;

    .line 284
    const v0, 0x7f09013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programvalue:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f09008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->devicename:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f09008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->devicevalue:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f0900f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 289
    .local v0, "logoImage":Landroid/widget/ImageView;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 292
    :cond_0
    return-void
.end method

.method private startScan()V
    .locals 4

    .line 196
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$1;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 231
    return-void
.end method

.method private updateSelectedDevice(Lcom/isaigu/gymapp/bean/DeviceBean;)V
    .locals 2
    .param p1, "deviceBean"    # Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 613
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 614
    if-nez p1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->devicename:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->devicevalue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->devicename:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->devicevalue:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    :goto_0
    return-void
.end method

.method private updateSelectedProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 6
    .param p1, "dataBean"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 596
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 597
    if-nez p1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programname:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programvalue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 602
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programname:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programvalue:Landroid/widget/TextView;

    const v2, 0x7f0d00e6

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getString(I)Ljava/lang/String;

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

    .line 605
    .end local v0    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :goto_0
    return-void
.end method

.method private updateSelectedUser(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 7
    .param p1, "user"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .line 568
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 569
    if-nez p1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->usericon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 571
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->username:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->agevalue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->heightvalue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->weightvalue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 576
    :cond_0
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v3, "sample"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v3, v1, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 577
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v3, 0x7f0c0020

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    new-array v3, v1, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 582
    :goto_1
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->username:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 584
    .local v0, "date":Ljava/util/Date;
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->agevalue:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    iget-object v5, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->heightvalue:Landroid/widget/TextView;

    const v4, 0x7f0d005a

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->weightvalue:Landroid/widget/TextView;

    const v4, 0x7f0d00f4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    .end local v0    # "date":Ljava/util/Date;
    :goto_3
    return-void
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .line 114
    const v0, 0x7f0b0070

    return v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 3
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 625
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 626
    .local v0, "event":S
    const/16 v1, 0x69

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 628
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 629
    goto :goto_0

    .line 631
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->handleDeviceDisconnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 632
    goto :goto_0

    .line 635
    :cond_0
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->handleDeviceDiscover(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 636
    goto :goto_0

    .line 646
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    .line 647
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$12;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$12;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 638
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    .line 639
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$11;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$11;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 644
    nop

    .line 654
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->initView(Landroid/view/View;)V

    .line 124
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    .line 125
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    .line 126
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    .line 129
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->initData()V

    .line 130
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->initListener()V

    .line 132
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "add"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->addTrainUser:Z

    .line 134
    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 155
    :cond_0
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->addTrainUser:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_7

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "selectUserIndex":I
    const/4 v2, 0x0

    .line 158
    .local v2, "selectProgramIndex":I
    const/4 v3, 0x0

    .line 159
    .local v3, "selectDeviceIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 160
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->trainUsers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v5, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v7, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v7, v7, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 161
    move v1, v4

    .line 162
    goto :goto_1

    .line 159
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    .end local v4    # "i":I
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 166
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programDatas:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    move v2, v4

    .line 168
    goto :goto_3

    .line 165
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 171
    .end local v4    # "i":I
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 172
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceBeans:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    move v3, v4

    .line 174
    goto :goto_5

    .line 171
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 177
    .end local v4    # "i":I
    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->userAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->setUserSelected(IZ)V

    .line 178
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->programAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;

    invoke-virtual {v4, v2, v5}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$ProgramAdapter;->setTrainProgramSelected(IZ)V

    .line 179
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-virtual {v4, v3, v5}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->setDeviceSelected(IZ)V

    .line 183
    .end local v1    # "selectUserIndex":I
    .end local v2    # "selectProgramIndex":I
    .end local v3    # "selectDeviceIndex":I
    :cond_7
    const/16 v1, 0x3f1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 184
    const/16 v1, 0x3f0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 185
    const/16 v1, 0x3ef

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 186
    const/16 v1, 0x3ec

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 187
    const/16 v1, 0x69

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 188
    const/16 v1, 0x6a

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 190
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->startScan()V

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 193
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 749
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onDestroyView()V

    .line 750
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 751
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->deviceAdapter:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->stop_all_timer()V

    .line 752
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer1:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer1:Ljava/util/Timer;

    .line 754
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer2:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 755
    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer2:Ljava/util/Timer;

    .line 756
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer3:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 757
    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer3:Ljava/util/Timer;

    .line 758
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer4:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 759
    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->delayTimer4:Ljava/util/Timer;

    .line 760
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ble/AndroidBleController;->stopScan()V

    .line 762
    return-void
.end method

.method public onDeviceConnected(Lcom/isaigu/gymapp/train/events/DeviceConnectFailEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/isaigu/gymapp/train/events/DeviceConnectFailEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const v1, 0x7f0d0030

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 254
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 255
    return-void
.end method

.method public onDeviceConnected(Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 234
    const-string v0, "www"

    const-string v1, "\u8fde\u63a5\u56de\u8c03"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;-><init>()V

    .line 236
    .local v0, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDataBean:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 237
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 238
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;->getDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->selectedDeviceBean:Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 242
    new-instance v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;-><init>(Z)V

    .line 243
    .local v1, "trainItem":Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/events/DeviceConnectedEvent;->getDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->setDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 244
    iput-object v0, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 245
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 246
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addTrainingUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Z

    .line 247
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->dismiss()V

    .line 248
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 258
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFullScreenDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 259
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 260
    return-void
.end method
