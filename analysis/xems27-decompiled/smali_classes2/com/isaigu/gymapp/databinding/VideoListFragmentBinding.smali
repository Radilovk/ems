.class public final Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;
.super Ljava/lang/Object;
.source "VideoListFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final listVeiw:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

.field public final logoImage:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "listVeiw"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p3, "logoImage"    # Landroid/widget/ImageView;
    .param p4, "videoPlayer"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 36
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;->listVeiw:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 37
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;->logoImage:Landroid/widget/ImageView;

    .line 38
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;->videoPlayer:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 68
    const v0, 0x7f0900e2

    .line 69
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 70
    .local v1, "listVeiw":Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    if-eqz v1, :cond_2

    .line 74
    const v0, 0x7f0900f6

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 76
    .local v2, "logoImage":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 80
    const v0, 0x7f0901e5

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    .line 82
    .local v3, "videoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;
    if-eqz v3, :cond_0

    .line 86
    new-instance v4, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;)V

    return-object v4

    .line 83
    :cond_0
    goto :goto_0

    .line 77
    .end local v3    # "videoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;
    :cond_1
    goto :goto_0

    .line 71
    .end local v2    # "logoImage":Landroid/widget/ImageView;
    :cond_2
    nop

    .line 89
    .end local v1    # "listVeiw":Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 55
    const v0, 0x7f0b0076

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/VideoListFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
