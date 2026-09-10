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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isShowMessage:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelable:Z

    .line 35
    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelOutside:Z

    .line 39
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->context:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public create()Lcom/isaigu/gymapp/widget/LoadingDialog;
    .locals 11

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0b003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 90
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    new-instance v10, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 91
    .local v3, "rotate":Landroid/view/animation/RotateAnimation;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 92
    .local v4, "lin":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 94
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 95
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 96
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 98
    new-instance v5, Lcom/isaigu/gymapp/widget/LoadingDialog;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->context:Landroid/content/Context;

    const v7, 0x7f0e00a4

    invoke-direct {v5, v6, v7}, Lcom/isaigu/gymapp/widget/LoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 99
    .local v5, "loadingDailog":Lcom/isaigu/gymapp/widget/LoadingDialog;
    const v6, 0x7f0901ae

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 100
    .local v6, "msgText":Landroid/widget/TextView;
    iget-boolean v7, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isShowMessage:Z

    if-eqz v7, :cond_0

    .line 101
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :goto_0
    invoke-virtual {v5, v1}, Lcom/isaigu/gymapp/widget/LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 106
    iget-boolean v7, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelable:Z

    invoke-virtual {v5, v7}, Lcom/isaigu/gymapp/widget/LoadingDialog;->setCancelable(Z)V

    .line 107
    iget-boolean v7, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelOutside:Z

    invoke-virtual {v5, v7}, Lcom/isaigu/gymapp/widget/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 108
    return-object v5
.end method

.method public setCancelOutside(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
    .locals 0
    .param p1, "isCancelOutside"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelOutside:Z

    .line 81
    return-object p0
.end method

.method public setCancelable(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
    .locals 0
    .param p1, "isCancelable"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isCancelable:Z

    .line 71
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->message:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public setShowMessage(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;
    .locals 0
    .param p1, "isShowMessage"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->isShowMessage:Z

    .line 60
    return-object p0
.end method
