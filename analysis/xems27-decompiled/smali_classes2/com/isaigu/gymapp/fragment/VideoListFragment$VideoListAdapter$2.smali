.class Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$2;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

.field final synthetic val$videoVO:Lcom/isaigu/gymapp/bean/vo/VideoVO;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;Lcom/isaigu/gymapp/bean/vo/VideoVO;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    .line 273
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$2;->val$videoVO:Lcom/isaigu/gymapp/bean/vo/VideoVO;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;->this$0:Lcom/isaigu/gymapp/fragment/VideoListFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$2;->val$videoVO:Lcom/isaigu/gymapp/bean/vo/VideoVO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/VideoListFragment;->access$900(Lcom/isaigu/gymapp/fragment/VideoListFragment;Lcom/isaigu/gymapp/bean/vo/VideoVO;)V

    .line 276
    return-void
.end method
