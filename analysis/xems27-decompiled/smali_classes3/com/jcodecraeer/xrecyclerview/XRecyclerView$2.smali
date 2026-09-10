.class Lcom/jcodecraeer/xrecyclerview/XRecyclerView$2;
.super Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;


# direct methods
.method constructor <init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 770
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$2;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;)V
    .locals 1
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "state"    # Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    .line 773
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$2;->this$0:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-static {v0, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->access$1202(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;)Lcom/jcodecraeer/xrecyclerview/AppBarStateChangeListener$State;

    .line 774
    return-void
.end method
