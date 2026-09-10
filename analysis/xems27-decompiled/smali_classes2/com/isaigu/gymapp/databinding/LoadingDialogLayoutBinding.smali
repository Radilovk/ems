.class public final Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;
.super Ljava/lang/Object;
.source "LoadingDialogLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogLoadingView:Landroid/widget/LinearLayout;

.field public final progressBar1:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tipTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "dialogLoadingView"    # Landroid/widget/LinearLayout;
    .param p3, "progressBar1"    # Landroid/widget/ProgressBar;
    .param p4, "tipTextView"    # Landroid/widget/TextView;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 35
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;->dialogLoadingView:Landroid/widget/LinearLayout;

    .line 36
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;->progressBar1:Landroid/widget/ProgressBar;

    .line 37
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;->tipTextView:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 67
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 69
    .local v0, "dialogLoadingView":Landroid/widget/LinearLayout;
    const v1, 0x7f090140

    .line 70
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 71
    .local v2, "progressBar1":Landroid/widget/ProgressBar;
    if-eqz v2, :cond_1

    .line 75
    const v1, 0x7f0901ae

    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "tipTextView":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 81
    new-instance v4, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    return-object v4

    .line 78
    :cond_0
    goto :goto_0

    .line 72
    .end local v3    # "tipTextView":Landroid/widget/TextView;
    :cond_1
    nop

    .line 84
    .end local v0    # "dialogLoadingView":Landroid/widget/LinearLayout;
    .end local v2    # "progressBar1":Landroid/widget/ProgressBar;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 54
    const v0, 0x7f0b003f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/LoadingDialogLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
