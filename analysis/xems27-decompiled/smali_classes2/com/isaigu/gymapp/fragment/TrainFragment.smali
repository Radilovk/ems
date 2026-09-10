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
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reconnectTimer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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
            "Ljava/util/HashMap<",
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

    .line 84
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;

    .line 527
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$14;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 542
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$15;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 84
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->startClearSelectedTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainRecordMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;
    .param p1, "x1"    # Z

    .line 84
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->updateAllStartPauseUI(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 84
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/fragment/TrainFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 84
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopClearSelectedTimer()V

    return-void
.end method

.method private changeLayoutPosition()V
    .locals 2

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 362
    .local v0, "layout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->leftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 363
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 365
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->rightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 367
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    :goto_0
    return-void
.end method

.method private declared-synchronized handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    monitor-enter p0

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const-class v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->isFragmentShow(Ljava/lang/Class;)Z

    move-result v0

    const/16 v1, 0x68

    if-eqz v0, :cond_0

    .line 423
    invoke-static {v1}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 424
    const-string v0, "\u8fde\u63a5\u754c\u9762\u6253\u5f00\u7740\uff0c\u4e0d\u7406\u4f1a\u84dd\u7259\u8bbe\u5907\u8fde\u63a5\u6210\u529f"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 427
    .end local p0    # "this":Lcom/isaigu/gymapp/fragment/TrainFragment;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 428
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    if-eqz v0, :cond_4

    .line 429
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleConnectionStatusChange(Ljava/lang/String;Z)V

    .line 430
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Timer;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 434
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 435
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 436
    .local v3, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 437
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->addTrainingUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Z

    .line 438
    goto :goto_1

    .line 434
    .end local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .end local v2    # "i":I
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :cond_4
    monitor-exit p0

    return-void

    .line 421
    .end local v0    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .end local p1    # "bundle":Lcom/isaigu/gymapp/message/DataBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleDeviceConnectedRefreshUI(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 5
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 370
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 371
    .local v0, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    if-nez v0, :cond_0

    .line 372
    const-string v1, "\u4f20\u9012\u8fc7\u6765 wrapper\u4e3a\u7a7a==========================="

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 373
    return-void

    .line 376
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addTrainingUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Z

    move-result v1

    .line 377
    .local v1, "success":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrainingUser   sucess ============================ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   \u6210\u529f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 378
    if-eqz v1, :cond_1

    .line 379
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$8;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v3, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    .line 384
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$9;

    invoke-direct {v3, p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$9;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 390
    :cond_1
    return-void
.end method

.method private declared-synchronized handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 9
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    monitor-enter p0

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const-class v1, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->isFragmentShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "\u63a7\u5236\u754c\u9762\u6ca1\u6253\u5f00\uff0c\u4e0d\u7406\u4f1a\u84dd\u7259\u8bbe\u5907\u8fde\u63a5\u65ad\u5f00"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    .line 454
    .end local p0    # "this":Lcom/isaigu/gymapp/fragment/TrainFragment;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;

    .line 455
    .local v0, "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u5907\u65ad\u5f00\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 456
    if-eqz v0, :cond_5

    .line 457
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/mgr/DataMgr;->removeTrainingUser(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v1

    .line 459
    .local v1, "dataWrapperList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    const/4 v3, 0x0

    .line 462
    .local v3, "reconnect":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    .line 463
    iget-object v5, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 464
    const/4 v3, 0x1

    .line 465
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-object v2, v5

    .line 466
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v7, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleConnectionStatusChange(Ljava/lang/String;Z)V

    .line 467
    goto :goto_1

    .line 462
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 470
    .end local v4    # "i":I
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 471
    if-eqz v3, :cond_5

    .line 473
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_3
    move v4, v6

    .line 474
    .local v4, "count":I
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    .line 475
    add-int/lit8 v4, v4, 0x1

    .line 476
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    new-instance v6, Lcom/isaigu/gymapp/fragment/TrainFragment$11;

    invoke-direct {v6, p0, v0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$11;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Lcom/isaigu/gymapp/message/DataBundle;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 488
    :cond_4
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v5, Lcom/isaigu/gymapp/fragment/TrainFragment$12;

    invoke-direct {v5, p0, v0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$12;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Lcom/isaigu/gymapp/message/DataBundle;)V

    const-wide/16 v6, 0x1f40

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v5

    .line 497
    .local v5, "timer":Ljava/util/Timer;
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Timer;

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 498
    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->reconnectTimer:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;->address:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    .end local v1    # "dataWrapperList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v3    # "reconnect":Z
    .end local v4    # "count":I
    .end local v5    # "timer":Ljava/util/Timer;
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 449
    .end local v0    # "model":Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;
    .end local p1    # "bundle":Lcom/isaigu/gymapp/message/DataBundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleGetBattery(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 3
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 517
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 518
    .local v0, "content":[B
    const-string v1, "address"

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/message/DataBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    .local v1, "address":Ljava/lang/String;
    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$13;

    invoke-direct {v2, p0, v1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$13;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/lang/String;[B)V

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 524
    return-void
.end method

.method private handleRefreshTrainUser(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 6
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v0

    .line 507
    .local v0, "mdata":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 508
    .local v2, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->type:I

    if-nez v3, :cond_0

    .line 509
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/mgr/DataMgr;->getTrainUser(J)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 512
    .end local v2    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_0
    goto :goto_0

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->notifyDataSetChanged()V

    .line 514
    return-void
.end method

.method private initListener()V
    .locals 4

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 226
    move v2, v0

    .line 227
    .local v2, "fi":I
    aget-object v1, v1, v0

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .end local v2    # "fi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allMinus:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allAdd:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allUsers:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$6;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStop:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v1, Lcom/isaigu/gymapp/fragment/TrainFragment$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 192
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    .line 193
    const v1, 0x7f090057

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f090059

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f09005a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f09005b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f09005c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f09005d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f09005e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f09005f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f090060

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->buwei:[Landroid/widget/LinearLayout;

    const v1, 0x7f090058

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 204
    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStop:Lcom/isaigu/gymapp/widget/MyButton;

    .line 205
    const v0, 0x7f09003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    .line 206
    const v0, 0x7f09003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allUsers:Lcom/isaigu/gymapp/widget/MyButton;

    .line 207
    const v0, 0x7f090039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allAdd:Lcom/isaigu/gymapp/widget/MyButton;

    .line 208
    const v0, 0x7f09003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MyButton;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allMinus:Lcom/isaigu/gymapp/widget/MyButton;

    .line 210
    const v0, 0x7f0900f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    .line 211
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
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

    .line 215
    :cond_0
    const v0, 0x7f0901b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 216
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v1, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 221
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 222
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->trainUserlistview:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 223
    return-void
.end method

.method private startClearSelectedTimer()V
    .locals 3

    .line 558
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopClearSelectedTimer()V

    .line 559
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$16;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$16;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    .line 569
    return-void
.end method

.method private stopClearSelectedTimer()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->clearSelectTimer:Ljava/util/Timer;

    .line 555
    return-void
.end method

.method private stopGetBatteryTimer()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    .line 416
    return-void
.end method

.method private updateAllStartPauseUI(Z)V
    .locals 2
    .param p1, "startPause"    # Z

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    if-eqz p1, :cond_0

    const v1, 0x7f0c006e

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0069

    :goto_0
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 318
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 2
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 334
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 346
    goto :goto_0

    .line 348
    :cond_1
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceDisConnected(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 349
    goto :goto_0

    .line 339
    :cond_2
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceConnectedRefreshUI(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 340
    goto :goto_0

    .line 342
    :cond_3
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleRefreshTrainUser(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 343
    goto :goto_0

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStopAllUser()V

    .line 352
    goto :goto_0

    .line 354
    :cond_5
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->handleGetBattery(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 336
    :cond_6
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->changeLayoutPosition()V

    .line 337
    nop

    .line 357
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->leftLayout:Landroid/widget/LinearLayout;

    .line 114
    const v1, 0x7f090155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->rightLayout:Landroid/widget/LinearLayout;

    .line 117
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->initView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->initListener()V

    .line 147
    const/4 v1, 0x6

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 149
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 150
    const/16 v1, 0x66

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 151
    const/16 v1, 0x65

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 153
    const/16 v1, 0x3f0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 154
    const/16 v1, 0x3f1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 156
    const/16 v1, 0x6b

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/TrainFragment$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    .line 159
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v3, v2}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V

    .line 174
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStopAllUser()V

    .line 2001
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->userTrainAdapter:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isSomeoneStart()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->updateAllStartPauseUI(Z)V

    .line 2002
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroy()V

    .line 2003
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 328
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 329
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopGetBatteryTimer()V

    .line 330
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 179
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->onHiddenChanged(Z)V

    .line 181
    if-nez p1, :cond_1

    .line 182
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
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

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 188
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 321
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onStart()V

    .line 322
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->changeLayoutPosition()V

    .line 323
    return-void
.end method

.method public startGetBatteryTimer()V
    .locals 5

    .line 395
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->stopGetBatteryTimer()V

    .line 396
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$10;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$10;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V

    const-wide/16 v1, 0x0

    const-wide/32 v3, 0xea60

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment;->batteryGetTimer:Ljava/util/Timer;

    .line 412
    return-void
.end method

.method protected viewId()I
    .locals 1

    .line 104
    const v0, 0x7f0b006e

    return v0
.end method
