.class public final Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;
.super Ljava/lang/Object;
.source "JzDialogProgressBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final durationImageTip:Landroid/widget/ImageView;

.field public final durationProgressbar:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvCurrent:Landroid/widget/TextView;

.field public final tvDuration:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "durationImageTip"    # Landroid/widget/ImageView;
    .param p3, "durationProgressbar"    # Landroid/widget/ProgressBar;
    .param p4, "tvCurrent"    # Landroid/widget/TextView;
    .param p5, "tvDuration"    # Landroid/widget/TextView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->rootView:Landroid/widget/LinearLayout;

    .line 39
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->durationImageTip:Landroid/widget/ImageView;

    .line 40
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->durationProgressbar:Landroid/widget/ProgressBar;

    .line 41
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->tvCurrent:Landroid/widget/TextView;

    .line 42
    iput-object p5, p0, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->tvDuration:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    const v0, 0x7f090091

    .line 73
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 74
    .local v1, "durationImageTip":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 78
    const v0, 0x7f090092

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ProgressBar;

    .line 80
    .local v8, "durationProgressbar":Landroid/widget/ProgressBar;
    if-eqz v8, :cond_2

    .line 84
    const v0, 0x7f0901c6

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 86
    .local v9, "tvCurrent":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 90
    const v0, 0x7f0901c7

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 92
    .local v10, "tvDuration":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 96
    new-instance v11, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v11

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v10    # "tvDuration":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 81
    .end local v9    # "tvCurrent":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 75
    .end local v8    # "durationProgressbar":Landroid/widget/ProgressBar;
    :cond_3
    nop

    .line 99
    .end local v1    # "durationImageTip":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    const v0, 0x7f0b0037

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/JzDialogProgressBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
