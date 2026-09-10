.class Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/VideoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemCount:I

.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

.field private videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/VideoVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/VideoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/VideoVO;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 196
    const/4 v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->itemCount:I

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    .line 200
    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->context:Landroid/content/Context;

    .line 201
    if-eqz p3, :cond_0

    .line 202
    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    .line 204
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;Landroid/content/Context;Ljava/util/List;Lcom/isaigu/gymapp/fragment/VideoListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$1;

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/VideoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/VideoVO;>;"
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$1;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->notifyDataSetChanged()V

    .line 243
    :cond_0
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->notifyDataSetChanged()V

    .line 248
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->itemCount:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->itemCount:I

    div-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->itemCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 258
    move-object v2, p1

    check-cast v2, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .line 259
    .local v2, "videoViewHolder":Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->itemCount:I

    if-ge v0, v3, :cond_2

    .line 260
    iget v3, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->itemCount:I

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 261
    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->access$600(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->access$600(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    iget v4, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->itemCount:I

    mul-int/2addr v4, p2

    add-int/2addr v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/vo/VideoVO;

    .line 266
    .local v1, "videoVO":Lcom/isaigu/gymapp/bean/vo/VideoVO;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/vo/VideoVO;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/vo/VideoVO;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->access$700(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 270
    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->access$800(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/vo/VideoVO;->videoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->access$1000(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v0

    new-instance v4, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$2;

    invoke-direct {v4, p0, v1}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$2;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;Lcom/isaigu/gymapp/bean/vo/VideoVO;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 278
    .end local v1    # "videoVO":Lcom/isaigu/gymapp/bean/vo/VideoVO;
    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->context:Landroid/content/Context;

    const v2, 0x7f040073

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;-><init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/vo/VideoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/VideoVO;>;"
    if-eqz p1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->videoList:Ljava/util/List;

    .line 209
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->notifyDataSetChanged()V

    .line 211
    :cond_0
    return-void
.end method
