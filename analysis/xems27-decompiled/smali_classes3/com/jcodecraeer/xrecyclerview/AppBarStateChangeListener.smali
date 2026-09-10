.class public abstract Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "AppBarStateChangeListener.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private mCurrentState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->IDLE:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->mCurrentState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "i"    # I

    .line 21
    if-nez p2, :cond_1

    .line 22
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->mCurrentState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    if-eq v0, v1, :cond_0

    .line 23
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;)V

    .line 25
    :cond_0
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->mCurrentState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 27
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->mCurrentState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->COLLAPSED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    if-eq v0, v1, :cond_2

    .line 28
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->COLLAPSED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;)V

    .line 30
    :cond_2
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->COLLAPSED:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->mCurrentState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->mCurrentState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->IDLE:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    if-eq v0, v1, :cond_4

    .line 33
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->IDLE:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;)V

    .line 35
    :cond_4
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;->IDLE:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;->mCurrentState:Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    .line 37
    :goto_0
    return-void
.end method

.method public abstract onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;)V
.end method
