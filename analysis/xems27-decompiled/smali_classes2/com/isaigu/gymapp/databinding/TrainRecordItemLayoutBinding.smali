.class public final Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;
.super Ljava/lang/Object;
.source "TrainRecordItemLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final textview1:Landroid/widget/TextView;

.field public final textview2:Landroid/widget/TextView;

.field public final textview3:Landroid/widget/TextView;

.field public final textview4:Landroid/widget/TextView;

.field public final textview5:Landroid/widget/TextView;

.field public final textview6:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "textview1"    # Landroid/widget/TextView;
    .param p3, "textview2"    # Landroid/widget/TextView;
    .param p4, "textview3"    # Landroid/widget/TextView;
    .param p5, "textview4"    # Landroid/widget/TextView;
    .param p6, "textview5"    # Landroid/widget/TextView;
    .param p7, "textview6"    # Landroid/widget/TextView;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->textview1:Landroid/widget/TextView;

    .line 44
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->textview2:Landroid/widget/TextView;

    .line 45
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->textview3:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->textview4:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->textview5:Landroid/widget/TextView;

    .line 48
    iput-object p7, p0, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->textview6:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 78
    move-object/from16 v0, p0

    const v1, 0x7f09019f

    .line 79
    .local v1, "id":I
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, "textview1":Landroid/widget/TextView;
    if-eqz v2, :cond_5

    .line 84
    const v1, 0x7f0901a1

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    .line 86
    .local v11, "textview2":Landroid/widget/TextView;
    if-eqz v11, :cond_4

    .line 90
    const v1, 0x7f0901a2

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 92
    .local v12, "textview3":Landroid/widget/TextView;
    if-eqz v12, :cond_3

    .line 96
    const v1, 0x7f0901a3

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 98
    .local v13, "textview4":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 102
    const v1, 0x7f0901a4

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 104
    .local v14, "textview5":Landroid/widget/TextView;
    if-eqz v14, :cond_1

    .line 108
    const v1, 0x7f0901a5

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 110
    .local v15, "textview6":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 114
    new-instance v16, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v16

    .line 111
    :cond_0
    goto :goto_0

    .line 105
    .end local v15    # "textview6":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 99
    .end local v14    # "textview5":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 93
    .end local v13    # "textview4":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 87
    .end local v12    # "textview3":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 81
    .end local v11    # "textview2":Landroid/widget/TextView;
    :cond_5
    nop

    .line 117
    .end local v2    # "textview1":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 65
    const v0, 0x7f0b006f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/TrainRecordItemLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
