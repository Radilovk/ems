.class public Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;
.super Landroid/widget/LinearLayout;
.source "LoadingMoreFooter.java"


# static fields
.field public static final STATE_COMPLETE:I = 0x1

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_NOMORE:I = 0x2


# instance fields
.field private loadingDoneHint:Ljava/lang/String;

.field private loadingHint:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;

.field private noMoreHint:Ljava/lang/String;

.field private progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

.field private progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->initView()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->initView()V

    .line 41
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    .line 45
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->destroy()V

    .line 47
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    .line 49
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 64
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setGravity(I)V

    .line 65
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v1, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    .line 68
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    .line 72
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    const v2, -0x4a4a4b

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 73
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorId(I)V

    .line 74
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v1, v2}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->addView(Landroid/view/View;)V

    .line 77
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/jcodecraeer/xrecyclerview/R$string;->listview_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingHint:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingHint:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/jcodecraeer/xrecyclerview/R$string;->listview_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingHint:Ljava/lang/String;

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->noMoreHint:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->noMoreHint:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/jcodecraeer/xrecyclerview/R$string;->nomore_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->noMoreHint:Ljava/lang/String;

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingDoneHint:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingDoneHint:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/jcodecraeer/xrecyclerview/R$string;->loading_done:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingDoneHint:Ljava/lang/String;

    .line 90
    :cond_5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jcodecraeer/xrecyclerview/R$dimen;->textandiconmargin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public setLoadingDoneHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingDoneHint:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLoadingHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingHint:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setNoMoreHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->noMoreHint:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 5
    .param p1, "style"    # I

    .prologue
    .line 98
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010077

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    .line 102
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    const v1, -0x4a4a4b

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 103
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorId(I)V

    .line 104
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressView:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setVisibility(I)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->loadingDoneHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setVisibility(I)V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->noMoreHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->progressCon:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setVisibility(I)V

    .line 122
    invoke-virtual {p0, v2}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setVisibility(I)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
