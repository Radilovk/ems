.class public final Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;
.super Ljava/lang/Object;
.source "JzLayoutClarityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final videoQualityWrapperArea:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "videoQualityWrapperArea"    # Landroid/widget/LinearLayout;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;->rootView:Landroid/widget/LinearLayout;

    .line 25
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;->videoQualityWrapperArea:Landroid/widget/LinearLayout;

    .line 26
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 51
    if-eqz p0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    .local v0, "videoQualityWrapperArea":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, v0}, Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v1

    .line 52
    .end local v0    # "videoQualityWrapperArea":Landroid/widget/LinearLayout;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 42
    const v0, 0x7f0b0039

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/JzLayoutClarityBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
