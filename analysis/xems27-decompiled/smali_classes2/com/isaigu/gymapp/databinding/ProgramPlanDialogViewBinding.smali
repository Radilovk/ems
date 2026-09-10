.class public final Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;
.super Ljava/lang/Object;
.source "ProgramPlanDialogViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layout:Landroid/widget/RelativeLayout;

.field public final programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final sureButton:Lcom/isaigu/gymapp/widget/MyButton;

.field public final timeView:Landroid/widget/TextView;

.field public final titleTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "layout"    # Landroid/widget/RelativeLayout;
    .param p3, "programPlanListView"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
    .param p4, "sureButton"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p5, "timeView"    # Landroid/widget/TextView;
    .param p6, "titleTextView"    # Landroid/widget/TextView;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->layout:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 44
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->sureButton:Lcom/isaigu/gymapp/widget/MyButton;

    .line 45
    iput-object p5, p0, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->timeView:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->titleTextView:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;

    .line 76
    const v0, 0x7f0900d3

    .line 77
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 78
    .local v1, "layout":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_4

    .line 82
    const v0, 0x7f09013b

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 84
    .local v9, "programPlanListView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
    if-eqz v9, :cond_3

    .line 88
    const v0, 0x7f090190

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/isaigu/gymapp/widget/MyButton;

    .line 90
    .local v10, "sureButton":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v10, :cond_2

    .line 94
    const v0, 0x7f0901ab

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 96
    .local v11, "timeView":Landroid/widget/TextView;
    if-eqz v11, :cond_1

    .line 100
    const v0, 0x7f0901b1

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 102
    .local v12, "titleTextView":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 106
    new-instance v13, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v13

    .line 103
    :cond_0
    goto :goto_0

    .line 97
    .end local v12    # "titleTextView":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 91
    .end local v11    # "timeView":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 85
    .end local v10    # "sureButton":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_3
    goto :goto_0

    .line 79
    .end local v9    # "programPlanListView":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;
    :cond_4
    nop

    .line 109
    .end local v1    # "layout":Landroid/widget/RelativeLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 63
    const v0, 0x7f0b005c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/ProgramPlanDialogViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
