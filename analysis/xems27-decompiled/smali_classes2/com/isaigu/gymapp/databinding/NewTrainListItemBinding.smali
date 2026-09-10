.class public final Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;
.super Ljava/lang/Object;
.source "NewTrainListItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final deleteButton:Landroid/widget/ImageButton;

.field public final imageView:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "deleteButton"    # Landroid/widget/ImageButton;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "textView"    # Landroid/widget/TextView;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 35
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;->deleteButton:Landroid/widget/ImageButton;

    .line 36
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;->imageView:Landroid/widget/ImageView;

    .line 37
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;->textView:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 67
    const v0, 0x7f090085

    .line 68
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 69
    .local v1, "deleteButton":Landroid/widget/ImageButton;
    if-eqz v1, :cond_2

    .line 73
    const v0, 0x7f0900bf

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 75
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 79
    const v0, 0x7f09019c

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, "textView":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 85
    new-instance v4, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v4

    .line 82
    :cond_0
    goto :goto_0

    .line 76
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 70
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_2
    nop

    .line 88
    .end local v1    # "deleteButton":Landroid/widget/ImageButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 54
    const v0, 0x7f0b0047

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
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/NewTrainListItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
