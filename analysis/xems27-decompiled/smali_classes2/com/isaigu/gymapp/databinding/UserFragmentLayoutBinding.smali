.class public final Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;
.super Ljava/lang/Object;
.source "UserFragmentLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adduser:Lcom/isaigu/gymapp/widget/MyButton;

.field public final logoImage:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final searchuser:Lcom/isaigu/gymapp/widget/MyButton;

.field public final searchuserEdittext:Landroid/widget/EditText;

.field public final updateuser:Lcom/isaigu/gymapp/widget/MyButton;

.field public final userlistview:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/EditText;Lcom/isaigu/gymapp/widget/MyButton;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "adduser"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p3, "logoImage"    # Landroid/widget/ImageView;
    .param p4, "searchuser"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p5, "searchuserEdittext"    # Landroid/widget/EditText;
    .param p6, "updateuser"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p7, "userlistview"    # Landroid/support/v7/widget/RecyclerView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->adduser:Lcom/isaigu/gymapp/widget/MyButton;

    .line 48
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->logoImage:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->searchuser:Lcom/isaigu/gymapp/widget/MyButton;

    .line 50
    iput-object p5, p0, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->searchuserEdittext:Landroid/widget/EditText;

    .line 51
    iput-object p6, p0, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->updateuser:Lcom/isaigu/gymapp/widget/MyButton;

    .line 52
    iput-object p7, p0, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->userlistview:Landroid/support/v7/widget/RecyclerView;

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 82
    move-object/from16 v0, p0

    const v1, 0x7f090034

    .line 83
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/MyButton;

    .line 84
    .local v2, "adduser":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v2, :cond_5

    .line 88
    const v1, 0x7f0900f6

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/ImageView;

    .line 90
    .local v11, "logoImage":Landroid/widget/ImageView;
    if-eqz v11, :cond_4

    .line 94
    const v1, 0x7f09016d

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/isaigu/gymapp/widget/MyButton;

    .line 96
    .local v12, "searchuser":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v12, :cond_3

    .line 100
    const v1, 0x7f09016e

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/EditText;

    .line 102
    .local v13, "searchuserEdittext":Landroid/widget/EditText;
    if-eqz v13, :cond_2

    .line 106
    const v1, 0x7f0901cc

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/isaigu/gymapp/widget/MyButton;

    .line 108
    .local v14, "updateuser":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v14, :cond_1

    .line 112
    const v1, 0x7f0901d8

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/support/v7/widget/RecyclerView;

    .line 114
    .local v15, "userlistview":Landroid/support/v7/widget/RecyclerView;
    if-eqz v15, :cond_0

    .line 118
    new-instance v16, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;-><init>(Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/ImageView;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/EditText;Lcom/isaigu/gymapp/widget/MyButton;Landroid/support/v7/widget/RecyclerView;)V

    return-object v16

    .line 115
    :cond_0
    goto :goto_0

    .line 109
    .end local v15    # "userlistview":Landroid/support/v7/widget/RecyclerView;
    :cond_1
    goto :goto_0

    .line 103
    .end local v14    # "updateuser":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_2
    goto :goto_0

    .line 97
    .end local v13    # "searchuserEdittext":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 91
    .end local v12    # "searchuser":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_4
    goto :goto_0

    .line 85
    .end local v11    # "logoImage":Landroid/widget/ImageView;
    :cond_5
    nop

    .line 121
    .end local v2    # "adduser":Lcom/isaigu/gymapp/widget/MyButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 69
    const v0, 0x7f0b0071

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/UserFragmentLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
