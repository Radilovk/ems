.class public Lcom/isaigu/gymapp/widget/SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "space"    # I

    .line 10
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 11
    iput p1, p0, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;->space:I

    .line 12
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 17
    iget v0, p0, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 18
    iget v0, p0, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 19
    iget v0, p0, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 22
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget v0, p0, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;->space:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 24
    :cond_0
    return-void
.end method
