.class Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoViewHolder"
.end annotation


# instance fields
.field private item:[Landroid/widget/RelativeLayout;

.field private maskImage:[Landroid/widget/ImageView;

.field private play:[Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

.field private videoName:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;Landroid/view/View;)V
    .locals 6
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 295
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    .line 296
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 297
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    .line 298
    new-array v2, v0, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    .line 299
    new-array v2, v0, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    .line 300
    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    .line 302
    const v0, 0x7f0900fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    const v1, 0x7f0900fc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    const v1, 0x7f0900fd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    const v1, 0x7f0900fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    const v1, 0x7f090135

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v2

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    const v1, 0x7f090136

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v3

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    const v1, 0x7f090137

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v4

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    const v1, 0x7f090138

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v0, v5

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    const v1, 0x7f0901e1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 313
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    const v1, 0x7f0901e2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    const v1, 0x7f0901e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v4

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    const v1, 0x7f0901e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    const v1, 0x7f0900c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    aput-object v1, v0, v2

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    const v1, 0x7f0900c6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    aput-object v1, v0, v3

    .line 319
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    const v1, 0x7f0900c7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    aput-object v1, v0, v4

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    const v1, 0x7f0900c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    aput-object v1, v0, v5

    .line 321
    return-void
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    return-object v0
.end method
