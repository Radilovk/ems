.class public Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
.super Ljava/lang/Object;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/LoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isCancelOutside:Z

.field private isCancelable:Z

.field private isShowMessage:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isShowMessage:Z

    .line 34
    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelable:Z

    .line 35
    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelOutside:Z

    .line 39
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->context:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public create()Lcom/isaigu/gymapp/widget/LoadingDialog;
    .locals 13

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 86
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 87
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 88
    .local v12, "view":Landroid/view/View;
    const v1, 0x7f0f012e

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    .line 90
    .local v11, "progressBar":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 91
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 92
    .local v8, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 94
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 96
    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 98
    new-instance v9, Lcom/isaigu/gymapp/widget/LoadingDialog;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->context:Landroid/content/Context;

    const v2, 0x7f0a00d8

    invoke-direct {v9, v1, v2}, Lcom/isaigu/gymapp/widget/LoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 99
    .local v9, "loadingDailog":Lcom/isaigu/gymapp/widget/LoadingDialog;
    const v1, 0x7f0f012f

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 100
    .local v10, "msgText":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isShowMessage:Z

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    invoke-virtual {v9, v12}, Lcom/isaigu/gymapp/widget/LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 106
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelable:Z

    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/LoadingDialog;->setCancelable(Z)V

    .line 107
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelOutside:Z

    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 108
    return-object v9

    .line 103
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCancelOutside(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
    .locals 0
    .param p1, "isCancelOutside"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelOutside:Z

    .line 81
    return-object p0
.end method

.method public setCancelable(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
    .locals 0
    .param p1, "isCancelable"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelable:Z

    .line 71
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->message:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public setShowMessage(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
    .locals 0
    .param p1, "isShowMessage"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isShowMessage:Z

    .line 60
    return-object p0
.end method
