.class public final Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;
.super Ljava/lang/Object;
.source "LoginFragmentLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final autologin:Landroid/support/v7/widget/AppCompatCheckBox;

.field public final login:Lcom/isaigu/gymapp/widget/MyButton;

.field public final logoImage:Landroid/widget/ImageView;

.field public final logoImage1:Landroid/widget/ImageView;

.field public final password:Landroid/widget/EditText;

.field public final rememberpassword:Landroid/support/v7/widget/AppCompatCheckBox;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final username:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/support/v7/widget/AppCompatCheckBox;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/support/v7/widget/AppCompatCheckBox;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "autologin"    # Landroid/support/v7/widget/AppCompatCheckBox;
    .param p3, "login"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p4, "logoImage"    # Landroid/widget/ImageView;
    .param p5, "logoImage1"    # Landroid/widget/ImageView;
    .param p6, "password"    # Landroid/widget/EditText;
    .param p7, "rememberpassword"    # Landroid/support/v7/widget/AppCompatCheckBox;
    .param p8, "username"    # Landroid/widget/EditText;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->autologin:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 51
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->login:Lcom/isaigu/gymapp/widget/MyButton;

    .line 52
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->logoImage:Landroid/widget/ImageView;

    .line 53
    iput-object p5, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->logoImage1:Landroid/widget/ImageView;

    .line 54
    iput-object p6, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->password:Landroid/widget/EditText;

    .line 55
    iput-object p7, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->rememberpassword:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 56
    iput-object p8, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->username:Landroid/widget/EditText;

    .line 57
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 86
    move-object/from16 v0, p0

    const v1, 0x7f090045

    .line 87
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AppCompatCheckBox;

    .line 88
    .local v2, "autologin":Landroid/support/v7/widget/AppCompatCheckBox;
    if-eqz v2, :cond_6

    .line 92
    const v1, 0x7f0900f5

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/isaigu/gymapp/widget/MyButton;

    .line 94
    .local v12, "login":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v12, :cond_5

    .line 98
    const v1, 0x7f0900f6

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ImageView;

    .line 100
    .local v13, "logoImage":Landroid/widget/ImageView;
    if-eqz v13, :cond_4

    .line 104
    const v1, 0x7f0900f7

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/ImageView;

    .line 106
    .local v14, "logoImage1":Landroid/widget/ImageView;
    if-eqz v14, :cond_3

    .line 110
    const v1, 0x7f09011d

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/EditText;

    .line 112
    .local v15, "password":Landroid/widget/EditText;
    if-eqz v15, :cond_2

    .line 116
    const v1, 0x7f09014d

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/support/v7/widget/AppCompatCheckBox;

    .line 118
    .local v16, "rememberpassword":Landroid/support/v7/widget/AppCompatCheckBox;
    if-eqz v16, :cond_1

    .line 122
    const v1, 0x7f0901d9

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/EditText;

    .line 124
    .local v17, "username":Landroid/widget/EditText;
    if-eqz v17, :cond_0

    .line 128
    new-instance v18, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/support/v7/widget/AppCompatCheckBox;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/support/v7/widget/AppCompatCheckBox;Landroid/widget/EditText;)V

    return-object v18

    .line 125
    :cond_0
    goto :goto_0

    .line 119
    .end local v17    # "username":Landroid/widget/EditText;
    :cond_1
    goto :goto_0

    .line 113
    .end local v16    # "rememberpassword":Landroid/support/v7/widget/AppCompatCheckBox;
    :cond_2
    goto :goto_0

    .line 107
    .end local v15    # "password":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 101
    .end local v14    # "logoImage1":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 95
    .end local v13    # "logoImage":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 89
    .end local v12    # "login":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_6
    nop

    .line 131
    .end local v2    # "autologin":Landroid/support/v7/widget/AppCompatCheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 73
    const v0, 0x7f0b0042

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/LoginFragmentLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
