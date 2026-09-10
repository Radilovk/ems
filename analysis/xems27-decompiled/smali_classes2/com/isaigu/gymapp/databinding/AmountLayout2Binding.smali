.class public final Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;
.super Ljava/lang/Object;
.source "AmountLayout2Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnDecrease:Lcom/isaigu/gymapp/widget/MyButton;

.field public final btnIncrease:Lcom/isaigu/gymapp/widget/MyButton;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final text:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/ShapeCornerBgView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "btnDecrease"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p3, "btnIncrease"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p4, "text"    # Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;->rootView:Landroid/widget/RelativeLayout;

    .line 34
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;->btnDecrease:Lcom/isaigu/gymapp/widget/MyButton;

    .line 35
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;->btnIncrease:Lcom/isaigu/gymapp/widget/MyButton;

    .line 36
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;->text:Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    .line 37
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 66
    const v0, 0x7f090052

    .line 67
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/MyButton;

    .line 68
    .local v1, "btnDecrease":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v1, :cond_2

    .line 72
    const v0, 0x7f090053

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/MyButton;

    .line 74
    .local v2, "btnIncrease":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v2, :cond_1

    .line 78
    const v0, 0x7f090197

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;

    .line 80
    .local v3, "text":Lcom/isaigu/gymapp/widget/ShapeCornerBgView;
    if-eqz v3, :cond_0

    .line 84
    new-instance v4, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;

    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;-><init>(Landroid/widget/RelativeLayout;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/MyButton;Lcom/isaigu/gymapp/widget/ShapeCornerBgView;)V

    return-object v4

    .line 81
    :cond_0
    goto :goto_0

    .line 75
    .end local v3    # "text":Lcom/isaigu/gymapp/widget/ShapeCornerBgView;
    :cond_1
    goto :goto_0

    .line 69
    .end local v2    # "btnIncrease":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_2
    nop

    .line 86
    .end local v1    # "btnDecrease":Lcom/isaigu/gymapp/widget/MyButton;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 53
    const v0, 0x7f0b001e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/AmountLayout2Binding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
