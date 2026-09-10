.class public Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DividerItemDecoration"
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field final synthetic this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;


# direct methods
.method public constructor <init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .param p2, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 792
    iput-object p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 793
    return-void
.end method

.method private drawHorizontalDividers(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 846
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    .line 847
    .local v7, "parentTop":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int v4, v8, v9

    .line 849
    .local v4, "parentBottom":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 850
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v8, v1, -0x1

    if-ge v2, v8, :cond_0

    .line 851
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 853
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 855
    .local v3, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v5, v8, v9

    .line 856
    .local v5, "parentLeft":I
    iget-object v8, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int v6, v5, v8

    .line 858
    .local v6, "parentRight":I
    iget-object v8, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v7, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 859
    iget-object v8, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 850
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v5    # "parentLeft":I
    .end local v6    # "parentRight":I
    :cond_0
    return-void
.end method

.method private drawVerticalDividers(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 873
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    .line 874
    .local v5, "parentLeft":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 876
    .local v6, "parentRight":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 877
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v8, v1, -0x1

    if-ge v2, v8, :cond_0

    .line 878
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 880
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 882
    .local v3, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v7, v8, v9

    .line 883
    .local v7, "parentTop":I
    iget-object v8, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v4, v7, v8

    .line 885
    .local v4, "parentBottom":I
    iget-object v8, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v7, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 886
    iget-object v8, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 888
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v4    # "parentBottom":I
    .end local v7    # "parentTop":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 823
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 825
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$100(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mOrientation:I

    .line 829
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mOrientation:I

    if-nez v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 831
    :cond_2
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 832
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 804
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mOrientation:I

    if-nez v0, :cond_1

    .line 805
    invoke-direct {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->drawHorizontalDividers(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 807
    invoke-direct {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;->drawVerticalDividers(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method
