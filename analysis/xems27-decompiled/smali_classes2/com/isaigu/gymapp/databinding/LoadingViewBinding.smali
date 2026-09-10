.class public final Lcom/isaigu/gymapp/databinding/LoadingViewBinding;
.super Ljava/lang/Object;
.source "LoadingViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonLayout:Landroid/widget/LinearLayout;

.field public final cancelButton:Lcom/isaigu/gymapp/widget/MyButton;

.field public final loadingText:Landroid/widget/TextView;

.field public final offlineTestImage:Landroid/widget/ImageView;

.field public final progressText:Landroid/widget/TextView;

.field public final progressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final statusImage:Landroid/widget/ImageView;

.field public final sureButton:Lcom/isaigu/gymapp/widget/MyButton;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircularProgressView;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/MyButton;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "buttonLayout"    # Landroid/widget/LinearLayout;
    .param p3, "cancelButton"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p4, "loadingText"    # Landroid/widget/TextView;
    .param p5, "offlineTestImage"    # Landroid/widget/ImageView;
    .param p6, "progressText"    # Landroid/widget/TextView;
    .param p7, "progressView"    # Lcom/isaigu/gymapp/widget/CircularProgressView;
    .param p8, "statusImage"    # Landroid/widget/ImageView;
    .param p9, "sureButton"    # Lcom/isaigu/gymapp/widget/MyButton;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 54
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->buttonLayout:Landroid/widget/LinearLayout;

    .line 55
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->cancelButton:Lcom/isaigu/gymapp/widget/MyButton;

    .line 56
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->loadingText:Landroid/widget/TextView;

    .line 57
    iput-object p5, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->offlineTestImage:Landroid/widget/ImageView;

    .line 58
    iput-object p6, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->progressText:Landroid/widget/TextView;

    .line 59
    iput-object p7, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->progressView:Lcom/isaigu/gymapp/widget/CircularProgressView;

    .line 60
    iput-object p8, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->statusImage:Landroid/widget/ImageView;

    .line 61
    iput-object p9, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->sureButton:Lcom/isaigu/gymapp/widget/MyButton;

    .line 62
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/LoadingViewBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 91
    move-object/from16 v0, p0

    const v1, 0x7f090055

    .line 92
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 93
    .local v2, "buttonLayout":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_7

    .line 97
    const v1, 0x7f090064

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/isaigu/gymapp/widget/MyButton;

    .line 99
    .local v13, "cancelButton":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v13, :cond_6

    .line 103
    const v1, 0x7f0900f2

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 105
    .local v14, "loadingText":Landroid/widget/TextView;
    if-eqz v14, :cond_5

    .line 109
    const v1, 0x7f090111

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageView;

    .line 111
    .local v15, "offlineTestImage":Landroid/widget/ImageView;
    if-eqz v15, :cond_4

    .line 115
    const v1, 0x7f090141

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/TextView;

    .line 117
    .local v16, "progressText":Landroid/widget/TextView;
    if-eqz v16, :cond_3

    .line 121
    const v1, 0x7f090144

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/isaigu/gymapp/widget/CircularProgressView;

    .line 123
    .local v17, "progressView":Lcom/isaigu/gymapp/widget/CircularProgressView;
    if-eqz v17, :cond_2

    .line 127
    const v1, 0x7f09018a

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/ImageView;

    .line 129
    .local v18, "statusImage":Landroid/widget/ImageView;
    if-eqz v18, :cond_1

    .line 133
    const v1, 0x7f090190

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/isaigu/gymapp/widget/MyButton;

    .line 135
    .local v19, "sureButton":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v19, :cond_0

    .line 139
    new-instance v20, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v20

    move-object v5, v2

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/isaigu/gymapp/widget/CircularProgressView;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/MyButton;)V

    return-object v20

    .line 136
    :cond_0
    goto :goto_0

    .line 130
    .end local v19    # "sureButton":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_1
    goto :goto_0

    .line 124
    .end local v18    # "statusImage":Landroid/widget/ImageView;
    :cond_2
    goto :goto_0

    .line 118
    .end local v17    # "progressView":Lcom/isaigu/gymapp/widget/CircularProgressView;
    :cond_3
    goto :goto_0

    .line 112
    .end local v16    # "progressText":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 106
    .end local v15    # "offlineTestImage":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 100
    .end local v14    # "loadingText":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 94
    .end local v13    # "cancelButton":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_7
    nop

    .line 142
    .end local v2    # "buttonLayout":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/LoadingViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/LoadingViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/LoadingViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 78
    const v0, 0x7f0b0040

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/LoadingViewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/LoadingViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
