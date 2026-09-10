.class public Lcom/yanzhenjie/loading/dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

.field private mTvMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    sget v0, Lcom/yanzhenjie/loading/R$style;->loadingDialog_Loading:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->setCancelable(Z)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    sget v0, Lcom/yanzhenjie/loading/R$layout;->loading_wait_dialog:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->setContentView(I)V

    .line 40
    sget v0, Lcom/yanzhenjie/loading/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/loading/LoadingView;

    iput-object v0, p0, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    .line 41
    sget v0, Lcom/yanzhenjie/loading/R$id;->loading_tv_message:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->mTvMessage:Landroid/widget/TextView;

    .line 42
    return-void
.end method


# virtual methods
.method public setCircleColors(III)V
    .locals 1
    .param p1, "r1"    # I
    .param p2, "r2"    # I
    .param p3, "r3"    # I

    .line 48
    iget-object v0, p0, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->mLoadingView:Lcom/yanzhenjie/loading/LoadingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yanzhenjie/loading/LoadingView;->setCircleColors(III)V

    .line 49
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 55
    iget-object v0, p0, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/yanzhenjie/loading/dialog/LoadingDialog;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
