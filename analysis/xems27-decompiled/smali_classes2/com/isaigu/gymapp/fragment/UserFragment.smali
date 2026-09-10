.class public Lcom/isaigu/gymapp/fragment/UserFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "UserFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;
    }
.end annotation


# instance fields
.field private add:Landroid/widget/Button;

.field private logoImage:Landroid/widget/ImageView;

.field private search:Landroid/widget/Button;

.field private searchuserEdittext:Landroid/widget/EditText;

.field private update:Landroid/widget/Button;

.field private userAdapter:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

.field private userlistview:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/UserFragment;)Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/UserFragment;

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userAdapter:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/UserFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/UserFragment;

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->searchuserEdittext:Landroid/widget/EditText;

    return-object v0
.end method

.method private initListener()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->add:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/UserFragment$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/UserFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->update:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/UserFragment$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/UserFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->search:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/fragment/UserFragment$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/UserFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->searchuserEdittext:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/fragment/UserFragment$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/UserFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 3
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 270
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 271
    .local v0, "event":S
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/UserFragment$6;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/UserFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/UserFragment$5;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/UserFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;)V

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    nop

    .line 287
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userlistview:Landroid/support/v7/widget/RecyclerView;

    .line 66
    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->search:Landroid/widget/Button;

    .line 67
    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->add:Landroid/widget/Button;

    .line 68
    const v1, 0x7f0901cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->update:Landroid/widget/Button;

    .line 70
    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->logoImage:Landroid/widget/ImageView;

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 75
    :cond_0
    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->searchuserEdittext:Landroid/widget/EditText;

    .line 77
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userlistview:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 78
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userlistview:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 79
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userlistview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userlistview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 82
    :cond_1
    new-instance v1, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userAdapter:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    .line 83
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->userlistview:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 85
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/UserFragment;->initListener()V

    .line 86
    const/16 v1, 0x65

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 87
    const/16 v1, 0x69

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 90
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 95
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->onHiddenChanged(Z)V

    .line 97
    if-nez p1, :cond_1

    .line 98
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 104
    :cond_1
    :goto_0
    return-void
.end method

.method protected viewId()I
    .locals 1

    .line 57
    const v0, 0x7f0b0071

    return v0
.end method
