.class Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;
.super Ljava/lang/Object;
.source "SwipeMenuRecyclerView.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemClick"
.end annotation


# instance fields
.field private mCallback:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private mRecyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
    .param p2, "callback"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;->mRecyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 282
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;->mCallback:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 283
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V
    .locals 2
    .param p1, "menuBridge"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    .line 287
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->getAdapterPosition()I

    move-result v0

    .line 288
    .local v0, "position":I
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;->mRecyclerView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getHeaderItemCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 289
    if-ltz v0, :cond_0

    .line 290
    iput v0, p1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mAdapterPosition:I

    .line 291
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$MenuItemClick;->mCallback:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-interface {v1, p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;->onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V

    .line 293
    :cond_0
    return-void
.end method
