.class public Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DefaultItemDecoration.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerWidth:I

.field private mViewTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x2

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    invoke-direct {p0, p1, v3, v3, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(III[I)V

    .line 48
    return-void
.end method

.method public varargs constructor <init>(III[I)V
    .locals 5
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "dividerWidth"    # I
    .param p3, "dividerHeight"    # I
    .param p4, "excludeViewType"    # [I

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mViewTypeList:Ljava/util/List;

    .line 57
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 58
    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    .line 59
    iput p3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    .line 60
    array-length v2, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p4, v1

    .line 61
    .local v0, "i":I
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mViewTypeList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getSpanCount(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 116
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 118
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 119
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0

    .line 121
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFirstColumn(II)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "columnCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 147
    if-ne p2, v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    :cond_1
    rem-int v1, p1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFirstRaw(II)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "columnCount"    # I

    .prologue
    .line 125
    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastColumn(II)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "columnCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 153
    if-ne p2, v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    rem-int/2addr v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastRaw(III)Z
    .locals 8
    .param p1, "position"    # I
    .param p2, "columnCount"    # I
    .param p3, "childCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 129
    if-ne p2, v4, :cond_2

    .line 130
    add-int/lit8 v6, p1, 0x1

    if-ne v6, p3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    rem-int v0, p3, p2

    .line 133
    .local v0, "lastRawItemCount":I
    sub-int v6, p3, v0

    div-int v7, v6, p2

    if-lez v0, :cond_3

    move v6, v4

    :goto_1
    add-int v1, v7, v6

    .line 135
    .local v1, "rawCount":I
    add-int/lit8 v6, p1, 0x1

    rem-int v3, v6, p2

    .line 136
    .local v3, "rawPositionJudge":I
    if-nez v3, :cond_4

    .line 137
    add-int/lit8 v6, p1, 0x1

    div-int v2, v6, p2

    .line 138
    .local v2, "rawPosition":I
    if-eq v1, v2, :cond_0

    move v4, v5

    goto :goto_0

    .end local v1    # "rawCount":I
    .end local v2    # "rawPosition":I
    .end local v3    # "rawPositionJudge":I
    :cond_3
    move v6, v5

    .line 133
    goto :goto_1

    .line 140
    .restart local v1    # "rawCount":I
    .restart local v3    # "rawPositionJudge":I
    :cond_4
    add-int/lit8 v6, p1, 0x1

    sub-int/2addr v6, v3

    div-int/2addr v6, p2

    add-int/lit8 v2, v6, 0x1

    .line 141
    .restart local v2    # "rawPosition":I
    if-eq v1, v2, :cond_0

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 167
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 168
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 170
    .local v3, "childPosition":I
    if-gez v3, :cond_1

    .line 167
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mViewTypeList:Ljava/util/List;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 172
    instance-of v8, v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    if-nez v8, :cond_0

    .line 173
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 174
    .local v5, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 175
    .local v7, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    .line 176
    .local v6, "right":I
    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    add-int v0, v7, v8

    .line 177
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 180
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childPosition":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 181
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 186
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 187
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 189
    .local v3, "childPosition":I
    if-gez v3, :cond_1

    .line 186
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_1
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mViewTypeList:Ljava/util/List;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 191
    instance-of v8, v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$LoadMoreView;

    if-nez v8, :cond_0

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    .line 193
    .local v5, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 194
    .local v7, "top":I
    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    add-int v6, v5, v8

    .line 195
    .local v6, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 197
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    iget-object v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 200
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childPosition":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 201
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 11
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v10, 0x0

    .line 67
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 68
    .local v6, "position":I
    if-gez v6, :cond_0

    .line 112
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mViewTypeList:Ljava/util/List;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    invoke-virtual {p1, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, p3}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->getSpanCount(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    .line 76
    .local v1, "columnCount":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 78
    .local v0, "childCount":I
    invoke-direct {p0, v6, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->isFirstRaw(II)Z

    move-result v3

    .line 79
    .local v3, "firstRaw":Z
    invoke-direct {p0, v6, v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->isLastRaw(III)Z

    move-result v5

    .line 80
    .local v5, "lastRaw":Z
    invoke-direct {p0, v6, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->isFirstColumn(II)Z

    move-result v2

    .line 81
    .local v2, "firstColumn":Z
    invoke-direct {p0, v6, v1}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->isLastColumn(II)Z

    move-result v4

    .line 83
    .local v4, "lastColumn":Z
    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    .line 84
    if-eqz v3, :cond_2

    .line 85
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p1, v10, v10, v10, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 86
    :cond_2
    if-eqz v5, :cond_3

    .line 87
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p1, v10, v7, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 89
    :cond_3
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v10, v7, v10, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 92
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 93
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v10, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 94
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 95
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v7, v10, v10, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 96
    :cond_6
    if-eqz v3, :cond_7

    .line 97
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v7, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 98
    :cond_7
    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 99
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v10, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 100
    :cond_8
    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    .line 101
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v7, v8, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 102
    :cond_9
    if-eqz v5, :cond_a

    .line 103
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 104
    :cond_a
    if-eqz v2, :cond_b

    .line 105
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v10, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 106
    :cond_b
    if-eqz v4, :cond_c

    .line 107
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v7, v8, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 109
    :cond_c
    iget v7, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerWidth:I

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->mDividerHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 162
    return-void
.end method
