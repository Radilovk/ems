.class public Lcom/isaigu/gymapp/fragment/TrainFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    }
.end annotation


# instance fields
.field private allAdd:Lcom/isaigu/gymapp/widget/MyButton;

.field private allMinus:Lcom/isaigu/gymapp/widget/MyButton;

.field private allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

.field private allStop:Lcom/isaigu/gymapp/widget/MyButton;

.field private allUsers:Lcom/isaigu/gymapp/widget/MyButton;

.field private batteryGetTimer:Ljava/util/Timer;

.field private buwei:[Landroid/widget/LinearLayout;

.field private clearSelectTimer:Ljava/util/Timer;

.field private leftLayout:Landroid/widget/LinearLayout;

.field private logoImage:Landroid/widget/ImageView;

.field private mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private reconnectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reconnectTimer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private rightLayout:Landroid/widget/LinearLayout;

.field private swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

.field private trainRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;",
            ">;"
        }
    .end annotation
.end field

.field private trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field private userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;

    .line 526
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 541
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$15;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->startClearSelectedTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->updateAllStartPauseUI(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopClearSelectedTimer()V

    return-void
.end method

.method private changeLayoutPosition()V
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 361
    .local v0, "layout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 366
    :goto_0
    return-void

    .line 363
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 364
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method private declared-synchronized handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    const-class v4, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/BaseActivity;->isFragmentShow(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    const/16 v3, 0x68

    invoke-static {v3}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 423
    const-string/jumbo v3, "\u8fde\u63a5\u754c\u9762\u6253\u5f00\u7740\uff0c\u4e0d\u7406\u4f1a\u84dd\u7259\u8bbe\u5907\u8fde\u63a5\u6210\u529f"

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 426
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 427
    .local v1, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    if-eqz v1, :cond_0

    .line 428
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v4, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleConnectionStatusChange(Ljava/lang/String;Z)V

    .line 429
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 431
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Timer;

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 433
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 434
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 435
    .local v2, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 436
    iget-object v3, v1, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/mgr/DataMgr;->addTrainingUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Z

    .line 440
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_3
    const/16 v3, 0x68

    invoke-static {v3}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    .end local v0    # "i":I
    .end local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 433
    .restart local v0    # "i":I
    .restart local v1    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .restart local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleDeviceConnectedRefreshUI(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 370
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-nez v1, :cond_1

    .line 371
    const-string/jumbo v2, "\u4f20\u9012\u8fc7\u6765 wrapper\u4e3a\u7a7a==========================="

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->addTrainingUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Z

    move-result v0

    .line 376
    .local v0, "success":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrainingUser   sucess ============================ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   \u6210\u529f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 377
    if-eqz v0, :cond_0

    .line 378
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$8;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    .line 383
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$9;

    invoke-direct {v3, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 12
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    const/4 v0, 0x0

    .line 449
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v7

    const-class v8, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/BaseActivity;->isFragmentShow(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 450
    const-string/jumbo v7, "\u63a7\u5236\u754c\u9762\u6ca1\u6253\u5f00\uff0c\u4e0d\u7406\u4f1a\u84dd\u7259\u8bbe\u5907\u8fde\u63a5\u65ad\u5f00"

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 453
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 454
    .local v3, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u8bbe\u5907\u65ad\u5f00\uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 455
    if-eqz v3, :cond_0

    .line 457
    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v1

    .line 458
    .local v1, "dataWrapperList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 459
    const/4 v6, 0x0

    .line 460
    .local v6, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    const/4 v4, 0x0

    .line 461
    .local v4, "reconnect":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 462
    iget-object v8, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 463
    const/4 v4, 0x1

    .line 464
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    check-cast v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 465
    .restart local v6    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v8, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleConnectionStatusChange(Ljava/lang/String;Z)V

    .line 469
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reconnect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 470
    goto/16 :goto_0

    .line 472
    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 473
    .local v0, "count":I
    :cond_3
    const/4 v7, 0x3

    if-ge v0, v7, :cond_5

    .line 474
    add-int/lit8 v0, v0, 0x1

    .line 475
    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v7

    new-instance v8, Lcom/isaigu/gymapp/fragment/TrainFragment$11;

    invoke-direct {v8, p0, v3, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$11;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Lcom/isaigu/gymapp/message/DataBundle;)V

    const-wide/16 v10, 0xbb8

    invoke-virtual {v7, v8, v10, v11}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 449
    .end local v0    # "count":I
    .end local v1    # "dataWrapperList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    .end local v2    # "i":I
    .end local v3    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .end local v4    # "reconnect":Z
    .end local v6    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 461
    .restart local v1    # "dataWrapperList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    .restart local v2    # "i":I
    .restart local v3    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .restart local v4    # "reconnect":Z
    .restart local v6    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    .restart local v0    # "count":I
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v7, Lcom/isaigu/gymapp/fragment/TrainFragment$12;

    invoke-direct {v7, p0, v3, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$12;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Lcom/isaigu/gymapp/message/DataBundle;)V

    const-wide/16 v8, 0x1f40

    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v5

    .line 496
    .local v5, "timer":Ljava/util/Timer;
    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Timer;

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 497
    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private handleGetBattery(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 3
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 516
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 517
    .local v1, "content":[B
    const-string v2, "address"

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/message/DataBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    .local v0, "address":Ljava/lang/String;
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$13;

    invoke-direct {v2, p0, v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$13;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/lang/String;[B)V

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 523
    return-void
.end method

.method private handleRefreshTrainUser(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 505
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v0

    .line 506
    .local v0, "mdata":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 507
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v2, :cond_0

    .line 508
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/isaigu/gymapp/mgr/DataMgr;->getTrainUser(J)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 509
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    goto :goto_0

    .line 512
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V

    .line 513
    return-void
.end method

.method private initListener()V
    .locals 4

    .prologue
    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 225
    move v0, v1

    .line 226
    .local v0, "fi":I
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v1

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "fi":I
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allMinus:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allAdd:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$4;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allUsers:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$6;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStop:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$7;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 191
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    .line 192
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const v0, 0x7f0f019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 193
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    const v0, 0x7f0f019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 194
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    const v0, 0x7f0f019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 195
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    const v0, 0x7f0f019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 196
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    const v0, 0x7f0f019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 197
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    const v0, 0x7f0f01a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x6

    const v0, 0x7f0f01a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 199
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/4 v2, 0x7

    const v0, 0x7f0f01a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 200
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v0, 0x7f0f01a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    .line 201
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const/16 v2, 0x9

    const v0, 0x7f0f01a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 203
    const v0, 0x7f0f01a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStop:Lcom/isaigu/gymapp/widget/MyButton;

    .line 204
    const v0, 0x7f0f01a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    .line 205
    const v0, 0x7f0f01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allUsers:Lcom/isaigu/gymapp/widget/MyButton;

    .line 206
    const v0, 0x7f0f01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allAdd:Lcom/isaigu/gymapp/widget/MyButton;

    .line 207
    const v0, 0x7f0f01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allMinus:Lcom/isaigu/gymapp/widget/MyButton;

    .line 209
    const v0, 0x7f0f00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    .line 210
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 214
    :cond_0
    const v0, 0x7f0f01a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v1, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 220
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 222
    return-void
.end method

.method private startClearSelectedTimer()V
    .locals 4

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopClearSelectedTimer()V

    .line 558
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$16;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$16;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    .line 568
    return-void
.end method

.method private stopClearSelectedTimer()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    .line 554
    return-void
.end method

.method private stopGetBatteryTimer()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    .line 415
    return-void
.end method

.method private updateAllStartPauseUI(Z)V
    .locals 2
    .param p1, "startPause"    # Z

    .prologue
    .line 316
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    if-eqz p1, :cond_0

    const v0, 0x7f030061

    :goto_0
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 317
    return-void

    .line 316
    :cond_0
    const v0, 0x7f03005c

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 1
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 356
    :goto_0
    return-void

    .line 335
    :sswitch_0
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->changeLayoutPosition()V

    goto :goto_0

    .line 338
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceConnectedRefreshUI(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 341
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleRefreshTrainUser(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 344
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 347
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 350
    :sswitch_5
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStopAllUser()V

    goto :goto_0

    .line 353
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleGetBattery(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_6
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6b -> :sswitch_5
        0x3f0 -> :sswitch_4
        0x3f1 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->leftLayout:Landroid/widget/LinearLayout;

    .line 113
    const v1, 0x7f0f009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->rightLayout:Landroid/widget/LinearLayout;

    .line 116
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->initView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->initListener()V

    .line 146
    const/4 v1, 0x6

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 148
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 149
    const/16 v1, 0x66

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 150
    const/16 v1, 0x65

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 152
    const/16 v1, 0x3f0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 153
    const/16 v1, 0x3f1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 155
    const/16 v1, 0x6b

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    .line 158
    invoke-virtual {v1, v2, v3}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V

    .line 173
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 328
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopGetBatteryTimer()V

    .line 329
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->onHiddenChanged(Z)V

    .line 180
    if-nez p1, :cond_0

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f030035

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onStart()V

    .line 321
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->changeLayoutPosition()V

    .line 322
    return-void
.end method

.method public startGetBatteryTimer()V
    .locals 6

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopGetBatteryTimer()V

    .line 395
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$10;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    .line 411
    return-void
.end method

.method protected viewId()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f04006a

    return v0
.end method
