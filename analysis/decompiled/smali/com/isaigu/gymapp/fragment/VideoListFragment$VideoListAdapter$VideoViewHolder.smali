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

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->this$1:Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter;

    .line 294
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 295
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    .line 296
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    .line 297
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    .line 298
    new-array v0, v1, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    .line 300
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    const v0, 0x7f0f01e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 301
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    const v0, 0x7f0f01ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 302
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    const v0, 0x7f0f01f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 303
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    const v0, 0x7f0f01f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    const v0, 0x7f0f01e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 306
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    const v0, 0x7f0f01ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    const v0, 0x7f0f01f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 308
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    const v0, 0x7f0f01f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 310
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    const v0, 0x7f0f01e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 311
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    const v0, 0x7f0f01ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 312
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    const v0, 0x7f0f01f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 313
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    const v0, 0x7f0f01f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 315
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f01e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v2

    .line 316
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f01ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v3

    .line 317
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f01ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v4

    .line 318
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    const v0, 0x7f0f01f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    aput-object v0, v1, v5

    .line 319
    return-void
.end method

.method static synthetic access$1000(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->play:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->item:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->maskImage:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/VideoListFragment$VideoListAdapter$VideoViewHolder;->videoName:[Landroid/widget/TextView;

    return-object v0
.end method
