.class public Lcom/isaigu/gymapp/fragment/VideoListFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

.field private isLastTimeVideoStop:Z

.field private logoImage:Landroid/widget/ImageView;

.field private mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

.field private page:I

.field private pageResponseVO:Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

.field private videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/isaigu/gymapp/bean/vo/PageResponseVO;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->pageResponseVO:Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/fragment/VideoListFragment;Lcom/isaigu/gymapp/bean/vo/PageResponseVO;)Lcom/isaigu/gymapp/bean/vo/PageResponseVO;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    .line 50
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->pageResponseVO:Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    return-object p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->adapter:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/VideoListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 50
    iget v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    return v0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/fragment/VideoListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    return p1
.end method

.method static synthetic access$308(Lcom/isaigu/gymapp/fragment/VideoListFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 50
    iget v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    return v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .line 50
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getNextData()V

    return-void
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/fragment/VideoListFragment;Lcom/isaigu/gymapp/bean/vo/VideoVO;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;

    .line 50
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->handlePlayVideo(Lcom/isaigu/gymapp/bean/vo/VideoVO;)V

    return-void
.end method

.method private getNextData()V
    .locals 3

    .line 122
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;-><init>()V

    .line 123
    .local v0, "dto":Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;
    new-instance v1, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;->pageBean:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

    .line 124
    new-instance v1, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$SearchDTO;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$SearchDTO;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;->search:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$SearchDTO;

    .line 126
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;->pageBean:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

    iget v2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;->page:I

    .line 127
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;->pageBean:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

    const/16 v2, 0xc

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;->size:I

    .line 128
    new-instance v1, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getVideoListByPage(Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 148
    return-void
.end method

.method private handlePlayVideo(Lcom/isaigu/gymapp/bean/vo/VideoVO;)V
    .locals 5
    .param p1, "videoVO"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;

    .line 184
    if-nez p1, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    if-nez v0, :cond_1

    .line 188
    return-void

    .line 190
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setVisibility(I)V

    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getProxy()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v0

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/vo/VideoVO;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "proxyUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v1, v3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 193
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->startVideo()V

    .line 194
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 150
    const v0, 0x7f0901e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    .line 151
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setVisibility(I)V

    .line 153
    const v0, 0x7f0900f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 158
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/fragment/VideoListFragment$1;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->adapter:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    .line 159
    const v0, 0x7f0900e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 160
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 162
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 163
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->adapter:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 164
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    new-instance v2, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;)V

    .line 181
    return-void
.end method

.method private stopAllPlay()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getNextData()V

    .line 72
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->initView(Landroid/view/View;)V

    .line 74
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 118
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->stopAllPlay()V

    .line 119
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 79
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->onHiddenChanged(Z)V

    .line 81
    if-nez p1, :cond_1

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->isLastTimeVideoStop:Z

    .line 104
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->isCurrentPlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->isLastTimeVideoStop:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->isLastTimeVideoStop:Z

    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->startVideo()V

    .line 113
    :cond_0
    return-void
.end method

.method protected viewId()I
    .locals 1

    .line 63
    const v0, 0x7f0b0076

    return v0
.end method
