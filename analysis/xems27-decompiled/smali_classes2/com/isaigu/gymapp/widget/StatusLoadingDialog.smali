.class public Lcom/isaigu/gymapp/widget/StatusLoadingDialog;
.super Landroid/support/v7/app/AlertDialog;
.source "StatusLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;
    }
.end annotation


# instance fields
.field private buttonLayout:Landroid/widget/LinearLayout;

.field private circularProgressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

.field private loadingTextView:Landroid/widget/TextView;

.field private progressText:Landroid/widget/TextView;

.field private statusImage:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setupView()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setupView()V

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setupView()V

    .line 42
    return-void
.end method

.method private setupView()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 48
    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/CircularProgressView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->circularProgressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

    .line 50
    const v1, 0x7f09018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    .line 51
    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->progressText:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->buttonLayout:Landroid/widget/LinearLayout;

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setCancelable(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public setShowLoading()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->circularProgressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircularProgressView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    return-void
.end method

.method public setShowText(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "loading"    # Z

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    if-eqz p2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->circularProgressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircularProgressView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public setShowWithProgressText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->circularProgressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircularProgressView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->buttonLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public setShowWithProgressText(Ljava/lang/String;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .line 111
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->circularProgressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircularProgressView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->progressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public setShowWithStatusImage(ILjava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->circularProgressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircularProgressView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->buttonLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    return-void
.end method

.method public setShowWithStatusImageAndButton(ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 95
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->circularProgressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircularProgressView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->statusImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->loadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->buttonLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$1;

    invoke-direct {v1, p0, p3}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$1;-><init>(Lcom/isaigu/gymapp/widget/StatusLoadingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method
