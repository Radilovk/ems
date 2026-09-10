.class public final Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;
.super Ljava/lang/Object;
.source "UserItemLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final height:Landroid/widget/TextView;

.field public final orderText:Landroid/widget/TextView;

.field public final recordImage:Landroid/widget/ImageView;

.field public final registertime:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sex:Landroid/widget/TextView;

.field public final traindata:Landroid/widget/TextView;

.field public final trainname:Landroid/widget/TextView;

.field public final userIcon:Landroid/widget/ImageView;

.field public final username:Landroid/widget/TextView;

.field public final weight:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "height"    # Landroid/widget/TextView;
    .param p3, "orderText"    # Landroid/widget/TextView;
    .param p4, "recordImage"    # Landroid/widget/ImageView;
    .param p5, "registertime"    # Landroid/widget/TextView;
    .param p6, "sex"    # Landroid/widget/TextView;
    .param p7, "traindata"    # Landroid/widget/TextView;
    .param p8, "trainname"    # Landroid/widget/TextView;
    .param p9, "userIcon"    # Landroid/widget/ImageView;
    .param p10, "username"    # Landroid/widget/TextView;
    .param p11, "weight"    # Landroid/widget/TextView;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 57
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->height:Landroid/widget/TextView;

    .line 58
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->orderText:Landroid/widget/TextView;

    .line 59
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->recordImage:Landroid/widget/ImageView;

    .line 60
    iput-object p5, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->registertime:Landroid/widget/TextView;

    .line 61
    iput-object p6, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->sex:Landroid/widget/TextView;

    .line 62
    iput-object p7, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->traindata:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->trainname:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->userIcon:Landroid/widget/ImageView;

    .line 65
    iput-object p10, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->username:Landroid/widget/TextView;

    .line 66
    iput-object p11, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->weight:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;
    .locals 25
    .param p0, "rootView"    # Landroid/view/View;

    .line 96
    move-object/from16 v0, p0

    const v1, 0x7f0900b4

    .line 97
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    .local v2, "height":Landroid/widget/TextView;
    if-eqz v2, :cond_9

    .line 102
    const v1, 0x7f090117

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 104
    .local v15, "orderText":Landroid/widget/TextView;
    if-eqz v15, :cond_8

    .line 108
    const v1, 0x7f090148

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/ImageView;

    .line 110
    .local v16, "recordImage":Landroid/widget/ImageView;
    if-eqz v16, :cond_7

    .line 114
    const v1, 0x7f09014c

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 116
    .local v17, "registertime":Landroid/widget/TextView;
    if-eqz v17, :cond_6

    .line 120
    const v1, 0x7f090173

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 122
    .local v18, "sex":Landroid/widget/TextView;
    if-eqz v18, :cond_5

    .line 126
    const v1, 0x7f0901b8

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 128
    .local v19, "traindata":Landroid/widget/TextView;
    if-eqz v19, :cond_4

    .line 132
    const v1, 0x7f0901b9

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 134
    .local v20, "trainname":Landroid/widget/TextView;
    if-eqz v20, :cond_3

    .line 138
    const v1, 0x7f0901ce

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/ImageView;

    .line 140
    .local v21, "userIcon":Landroid/widget/ImageView;
    if-eqz v21, :cond_2

    .line 144
    const v1, 0x7f0901d9

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 146
    .local v22, "username":Landroid/widget/TextView;
    if-eqz v22, :cond_1

    .line 150
    const v1, 0x7f0901f9

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 152
    .local v23, "weight":Landroid/widget/TextView;
    if-eqz v23, :cond_0

    .line 156
    new-instance v24, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v24

    move-object v5, v2

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    invoke-direct/range {v3 .. v14}, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v24

    .line 153
    :cond_0
    goto :goto_0

    .line 147
    .end local v23    # "weight":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 141
    .end local v22    # "username":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 135
    .end local v21    # "userIcon":Landroid/widget/ImageView;
    :cond_3
    goto :goto_0

    .line 129
    .end local v20    # "trainname":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 123
    .end local v19    # "traindata":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 117
    .end local v18    # "sex":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 111
    .end local v17    # "registertime":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 105
    .end local v16    # "recordImage":Landroid/widget/ImageView;
    :cond_8
    goto :goto_0

    .line 99
    .end local v15    # "orderText":Landroid/widget/TextView;
    :cond_9
    nop

    .line 159
    .end local v2    # "height":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 83
    const v0, 0x7f0b0072

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/UserItemLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
