.class public Lcom/isaigu/gymapp/fragment/NewTrainFragment;
.super Landroid/support/v4/app/Fragment;
.source "NewTrainFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"


# instance fields
.field private adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

.field private allStart:Z

.field binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

.field itemTouchListener:Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;

.field private mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private mParam1:Ljava/lang/String;

.field manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private partsControl:[Z

.field private partsDisabled:[Z

.field recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

.field private selecting:Z

.field private swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

.field trainListListener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    const/16 v0, 0xa

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsDisabled:[Z

    .line 48
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsControl:[Z

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    .line 52
    new-instance v2, Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-direct {v2, v1, v0}, Lcom/isaigu/gymapp/train/TrainItemManager;-><init>([Z[Z)V

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 148
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->itemTouchListener:Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;

    .line 175
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->trainListListener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    .line 236
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 251
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;-><init>(Lcom/isaigu/gymapp/BaseActivity;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 43
    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/fragment/NewTrainFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->selecting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Lcom/isaigu/gymapp/train/TrainAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    return-object v0
.end method

.method private changePartControl(I)V
    .locals 2
    .param p1, "index"    # I

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsControl:[Z

    aget-boolean v1, v0, p1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method private changePartDisabled(I)V
    .locals 2
    .param p1, "index"    # I

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->partsDisabled:[Z

    aget-boolean v1, v0, p1

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, v0, p1

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 136
    return-void
.end method

.method static synthetic lambda$null$16(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p0, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 145
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void
.end method

.method static synthetic lambda$settingAllUser$15(Ljava/util/ArrayList;Ljava/util/List;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p0, "wrappers"    # Ljava/util/ArrayList;
    .param p1, "items"    # Ljava/util/List;
    .param p2, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 142
    iget-object v0, p2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method static synthetic lambda$settingAllUser$17(Ljava/util/List;)V
    .locals 2
    .param p0, "items"    # Ljava/util/List;

    .line 145
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk;->INSTANCE:Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxLu4AU3T57mrv1ByelxDPKUDEk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .locals 3
    .param p0, "param1"    # Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;-><init>()V

    .line 60
    .local v0, "fragment":Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "param1"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v0
.end method

.method private settingAllUser()V
    .locals 4

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "wrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/train/model/TrainItem;>;"
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$KMZi3lztyuzd4mudgGf1YCOcs4U;

    invoke-direct {v3, v0, v1}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$KMZi3lztyuzd4mudgGf1YCOcs4U;-><init>(Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 145
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$4IA_AlIkH-9P4P6cXtPY26RerNE;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$4IA_AlIkH-9P4P6cXtPY26RerNE;-><init>(Ljava/util/List;)V

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->settingAllUser(Lcom/isaigu/gymapp/BaseActivity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method


# virtual methods
.method public applicationExit(Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/isaigu/gymapp/train/events/ApplicationExitEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->closeAll()V

    .line 223
    return-void
.end method

.method public getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    return-object v0
.end method

.method public synthetic lambda$onCreateView$0$NewTrainFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->startOrStopAll()V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$NewTrainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->resetAll()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 100
    return-void
.end method

.method public synthetic lambda$onCreateView$10$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 109
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$11$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 110
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$12$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 111
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$13$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 112
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$14$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 113
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$2$NewTrainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$3$NewTrainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addAllPartValue(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$4$NewTrainFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->settingAllUser()V

    return-void
.end method

.method public synthetic lambda$onCreateView$5$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$6$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$7$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 106
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$8$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 107
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public synthetic lambda$onCreateView$9$NewTrainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View;

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->changePartControl(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->mParam1:Ljava/lang/String;

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/ble/BleDeviceManager;->init(Landroid/app/Application;)V

    .line 85
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-static {p1}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    .line 93
    invoke-virtual {v0}, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 94
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$OQWilcYq6RdiTla_3_sr4TTqpsU;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$OQWilcYq6RdiTla_3_sr4TTqpsU;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allStop:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$J1UXeZLrJ3RsU-3xcWYfrmcMKMU;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$J1UXeZLrJ3RsU-3xcWYfrmcMKMU;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allAdd:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$UPI3iawMxk-F4wkSj1YULA0mNNU;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$UPI3iawMxk-F4wkSj1YULA0mNNU;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allminus:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$p9DKAYhY7Mu9CyUdje4XJq_UkJg;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$p9DKAYhY7Mu9CyUdje4XJq_UkJg;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allPerson:Lcom/isaigu/gymapp/widget/MyButton;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$TmwMnAo_bWUIZz7SvT7b3k1bLqM;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$TmwMnAo_bWUIZz7SvT7b3k1bLqM;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/MyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei1:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$l3gn-YOZdKR1b3Ga5i73kWOxLX0;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$l3gn-YOZdKR1b3Ga5i73kWOxLX0;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei2:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$fYDVVutn7gmb6wZ118UhJ0MeTOY;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$fYDVVutn7gmb6wZ118UhJ0MeTOY;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei3:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$zU4exJ7kQkUHtZqoo_Up0GMysj0;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$zU4exJ7kQkUHtZqoo_Up0GMysj0;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei4:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxvyfcsnAoZug_-4M7b5ln37z5E;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$wxvyfcsnAoZug_-4M7b5ln37z5E;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei5:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$DA9uUpaR3U_RQHvq_4NMqAvUA5I;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$DA9uUpaR3U_RQHvq_4NMqAvUA5I;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei6:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$dKezIF8dUyPpB0rmli8RxIyk_6g;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$dKezIF8dUyPpB0rmli8RxIyk_6g;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei7:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$hsgXDsMjGwhJX92Y-TVSmR3mBv4;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$hsgXDsMjGwhJX92Y-TVSmR3mBv4;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei8:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$qZFbtIkPFRuDnd4U_f-yj1zMZpM;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$qZFbtIkPFRuDnd4U_f-yj1zMZpM;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei9:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$VPgT6odXYEwF5Cz7xRUXHVUwP5s;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$VPgT6odXYEwF5Cz7xRUXHVUwP5s;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->buwei10:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$VM_GWjD7nE-VZhM1A7Ax35wko1w;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/-$$Lambda$NewTrainFragment$VM_GWjD7nE-VZhM1A7Ax35wko1w;-><init>(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 116
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 117
    new-instance v1, Lcom/isaigu/gymapp/train/TrainAdapter;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->trainListListener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    invoke-direct {v1, v2, p0, v3}, Lcom/isaigu/gymapp/train/TrainAdapter;-><init>(Ljava/util/List;Lcom/isaigu/gymapp/fragment/NewTrainFragment;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    .line 118
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 119
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 121
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v1, v1, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->recyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->itemTouchListener:Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->startScan()V

    .line 124
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->getBaseActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->requestPermission(Lcom/isaigu/gymapp/BaseActivity;)V

    .line 125
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 216
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 217
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 211
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 212
    return-void
.end method

.method public onDeviceConnected(Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;->getTrainItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->recordManager:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setRecordManager(Lcom/isaigu/gymapp/train/utils/TrainRecordManager;)V

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/events/TrainUserSelectedEvent;->getTrainItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->addTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 70
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->adapter:Lcom/isaigu/gymapp/train/TrainAdapter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public onDeviceDisConnected(Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/events/DeviceDisConnectedEvent;->getDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->disConnected(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public startOrStopAll()V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->binding:Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;

    iget-object v0, v0, Lcom/isaigu/gymapp/databinding/NewTrainFragmentLayoutBinding;->allStartPause:Lcom/isaigu/gymapp/widget/MyButton;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c006e

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0069

    :goto_0
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MyButton;->setBackgroundResource(I)V

    .line 229
    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->allStart:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V

    goto :goto_1

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V

    .line 234
    :goto_1
    return-void
.end method

.method public startScan()V
    .locals 0

    .line 207
    return-void
.end method
