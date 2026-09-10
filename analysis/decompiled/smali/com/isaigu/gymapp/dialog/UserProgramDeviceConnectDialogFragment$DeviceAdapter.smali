.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;
    }
.end annotation


# instance fields
.field private addressTimer:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private selects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p2, "deviceBeen":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/DeviceBean;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 892
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    .line 889
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->updateData(Ljava/util/List;)V

    .line 890
    return-void
.end method

.method static synthetic access$2300(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->stop_mac_address_timer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->isDeviceConnected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    return-object v0
.end method

.method private isDeviceConnected(Ljava/lang/String;)Z
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 1025
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1026
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

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    const/4 v1, 0x1

    .line 1030
    :goto_1
    return v1

    .line 1025
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private start_mac_address_timer(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 931
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    :goto_0
    return-void

    .line 934
    :cond_0
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->stop_mac_address_timer(Ljava/lang/String;)V

    .line 935
    new-instance v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$1;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v0

    .line 955
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private stop_mac_address_timer(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    .line 927
    .local v0, "timer":Ljava/util/Timer;
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized discoverDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "connectedSign"    # Ljava/lang/String;

    .prologue
    .line 959
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 962
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 965
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iput-object p2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    .line 966
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->start_mac_address_timer(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 959
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 969
    .restart local v0    # "i":I
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->start_mac_address_timer(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 962
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1038
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0d004d

    const v5, 0x7f0d0045

    const v4, 0x7f0d0023

    .line 983
    move-object v1, p1

    check-cast v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;

    .line 984
    .local v1, "deviceHolder":Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 985
    .local v0, "deviceBean":Lcom/isaigu/gymapp/bean/DeviceBean;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2600(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 989
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2600(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 990
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 997
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 998
    iget-object v2, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1003
    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->isDeviceConnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1004
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2600(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1005
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1008
    :cond_0
    iget-object v2, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;

    invoke-direct {v3, p0, p2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$2;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    return-void

    .line 993
    :cond_1
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2600(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 994
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->access$2500(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1000
    :cond_2
    iget-object v2, v1, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 977
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter$DeviceHolder;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setDeviceSelected(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 906
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 910
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public stop_all_timer()V
    .locals 3

    .prologue
    .line 914
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 916
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Timer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    goto :goto_0

    .line 919
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Timer;>;"
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->addressTimer:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 920
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 895
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/DeviceBean;>;"
    if-eqz p1, :cond_1

    .line 896
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    .line 897
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    .line 898
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->selects:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->start_mac_address_timer(Ljava/lang/String;)V

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$DeviceAdapter;->notifyDataSetChanged()V

    .line 904
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
