.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NewUserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;
    }
.end annotation


# instance fields
.field private addressTimer:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private selects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;)V"
        }
    .end annotation

    .line 963
    .local p2, "deviceBeen":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/DeviceBean;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 967
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    .line 964
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->updateData(Ljava/util/List;)V

    .line 965
    return-void
.end method

.method static synthetic access$2400(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 958
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->stop_mac_address_timer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 958
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->isDeviceConnected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    return-object v0
.end method

.method private isDeviceConnected(Ljava/lang/String;)Z
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 1112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1113
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1114
    const/4 v1, 0x1

    return v1

    .line 1112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1117
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private start_mac_address_timer(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 1009
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    return-void

    .line 1012
    :cond_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->stop_mac_address_timer(Ljava/lang/String;)V

    .line 1013
    new-instance v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$1;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v0

    .line 1033
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    return-void
.end method

.method private stop_mac_address_timer(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 999
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    .line 1004
    .local v0, "timer":Ljava/util/Timer;
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 1006
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized discoverDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "connectedSign"    # Ljava/lang/String;

    monitor-enter p0

    .line 1037
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1048
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1049
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1051
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iput-object p2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    .line 1052
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->start_mac_address_timer(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1055
    .end local p0    # "this":Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;
    :cond_1
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->start_mac_address_timer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    goto :goto_1

    .line 1048
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    .end local v0    # "i":I
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1038
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 1036
    .end local p1    # "macAddress":Ljava/lang/String;
    .end local p2    # "connectedSign":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 1070
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;

    .line 1071
    .local v0, "deviceHolder":Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 1072
    .local v1, "deviceBean":Lcom/isaigu/gymapp/bean/DeviceBean;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2700(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2700(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1077
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1080
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2700(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1081
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1084
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1087
    :cond_1
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1090
    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->isDeviceConnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1091
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2700(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1092
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1095
    :cond_2
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$2;

    invoke-direct {v3, p0, p2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$2;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 1064
    new-instance v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setDeviceSelected(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "selected"    # Z

    .line 982
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->notifyDataSetChanged()V

    .line 987
    return-void

    .line 983
    :cond_1
    :goto_0
    return-void
.end method

.method public stop_all_timer()V
    .locals 3

    .line 990
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 992
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Timer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Timer;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 993
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Timer;>;"
    goto :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 996
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;)V"
        }
    .end annotation

    .line 970
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/DeviceBean;>;"
    if-eqz p1, :cond_1

    .line 971
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    .line 973
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->start_mac_address_timer(Ljava/lang/String;)V

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$DeviceAdapter;->notifyDataSetChanged()V

    .line 979
    :cond_1
    return-void
.end method
