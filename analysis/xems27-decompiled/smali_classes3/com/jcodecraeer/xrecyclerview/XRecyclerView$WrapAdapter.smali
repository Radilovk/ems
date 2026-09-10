.class Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrapAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$SimpleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;


# direct methods
.method public constructor <init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p2, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 540
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 541
    iput-object p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 542
    return-void
.end method

.method static synthetic access$200(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    .line 536
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method


# virtual methods
.method public getHeadersCount()I
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$500(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x0

    return v0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$500(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$400(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 624
    .local v0, "adjLen":I
    :goto_0
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v1

    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .line 660
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lt p1, v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    .line 662
    .local v0, "adjPosition":I
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    .line 666
    .end local v0    # "adjPosition":I
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .line 633
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    .line 634
    .local v0, "adjPosition":I
    invoke-virtual {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    const/16 v1, 0x2710

    return v1

    .line 637
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isHeader(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    add-int/lit8 p1, p1, -0x1

    .line 639
    invoke-static {}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$1000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 641
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isFooter(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    const/16 v1, 0x2711

    return v1

    .line 645
    :cond_2
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_4

    .line 646
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 647
    .local v1, "adapterCount":I
    if-ge v0, v1, :cond_4

    .line 648
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v2

    .line 649
    .local v2, "type":I
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v3, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$1100(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 652
    return v2

    .line 650
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "XRecyclerView require itemViewType in adapter should be less than 10000 "

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 655
    .end local v1    # "adapterCount":I
    .end local v2    # "type":I
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public getOriginalAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public isFooter(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 555
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$400(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 558
    :cond_1
    return v1
.end method

.method public isHeader(I)Z
    .locals 3
    .param p1, "position"    # I

    .line 549
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$500(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 550
    return v1

    .line 551
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$500(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isRefreshHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 563
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 671
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 672
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 673
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 674
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 675
    .local v1, "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v2, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$1;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 683
    .end local v1    # "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 684
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 586
    invoke-virtual {p0, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p2, v0

    .line 591
    .local v0, "adjPosition":I
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    .line 592
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 593
    .local v1, "adapterCount":I
    if-ge v0, v1, :cond_1

    .line 594
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 597
    .end local v1    # "adapterCount":I
    :cond_1
    return-void

    .line 587
    .end local v0    # "adjPosition":I
    :cond_2
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p2, v0

    .line 608
    .local v0, "adjPosition":I
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_2

    .line 609
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 610
    .local v1, "adapterCount":I
    if-ge v0, v1, :cond_2

    .line 611
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 615
    :cond_1
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1, v0, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 619
    .end local v1    # "adapterCount":I
    :cond_2
    :goto_0
    return-void

    .line 603
    .end local v0    # "adjPosition":I
    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 574
    const/16 v0, 0x2710

    if-ne p2, v0, :cond_0

    .line 575
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$SimpleViewHolder;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$600(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;Landroid/view/View;)V

    return-object v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v0, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$700(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$SimpleViewHolder;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v1, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$800(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;Landroid/view/View;)V

    return-object v0

    .line 578
    :cond_1
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_2

    .line 579
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$SimpleViewHolder;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$900(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;Landroid/view/View;)V

    return-object v0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 688
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 689
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 716
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 693
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 694
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 695
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 697
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->isFooter(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 699
    .local v1, "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 701
    .end local v1    # "p":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 702
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 706
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 707
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 711
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 712
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 726
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 727
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 721
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 722
    return-void
.end method
