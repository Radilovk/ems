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

    .prologue
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

    .prologue
    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->pageResponseVO:Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/fragment/VideoListFragment;Lcom/isaigu/gymapp/bean/vo/PageResponseVO;)Lcom/isaigu/gymapp/bean/vo/PageResponseVO;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->pageResponseVO:Lcom/isaigu/gymapp/bean/vo/PageResponseVO;

    return-object p1
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->adapter:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/VideoListFragment;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/VideoListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .prologue
    .line 50
    iget v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    return v0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/fragment/VideoListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    return p1
.end method

.method static synthetic access$308(Lcom/isaigu/gymapp/fragment/VideoListFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .prologue
    .line 50
    iget v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    return v0
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getNextData()V

    return-void
.end method

.method static synthetic access$900(Lcom/isaigu/gymapp/fragment/VideoListFragment;Lcom/isaigu/gymapp/bean/vo/VideoVO;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->handlePlayVideo(Lcom/isaigu/gymapp/bean/vo/VideoVO;)V

    return-void
.end method

.method private getNextData()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;-><init>()V

    .line 123
    .local v0, "dto":Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;
    new-instance v1, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;->pageBean:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

    .line 124
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;->pageBean:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

    iget v2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->page:I

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;->page:I

    .line 125
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;->pageBean:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

    const/16 v2, 0xc

    iput v2, v1, Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;->size:I

    .line 126
    new-instance v1, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getVideoListByPage(Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 146
    return-void
.end method

.method private handlePlayVideo(Lcom/isaigu/gymapp/bean/vo/VideoVO;)V
    .locals 5
    .param p1, "videoVO"    # Lcom/isaigu/gymapp/bean/vo/VideoVO;

    .prologue
    const/4 v4, 0x0

    .line 182
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setVisibility(I)V

    .line 189
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getProxy()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v1

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/vo/VideoVO;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "proxyUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v4, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->startVideo()V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 148
    const v1, 0x7f0f01e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    .line 149
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setVisibility(I)V

    .line 151
    const v1, 0x7f0f00b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 156
    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/fragment/VideoListFragment$1;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->adapter:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    .line 157
    const v1, 0x7f0f01e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 158
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 160
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 161
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->adapter:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    new-instance v2, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;)V

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;)V

    .line 179
    return-void
.end method

.method private stopAllPlay()V
    .locals 1

    .prologue
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

    .prologue
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

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->onHiddenChanged(Z)V

    .line 81
    if-nez p1, :cond_0

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

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

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f030035

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
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

    .prologue
    .line 108
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

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

    .prologue
    .line 63
    const v0, 0x7f040072

    return v0
.end method
