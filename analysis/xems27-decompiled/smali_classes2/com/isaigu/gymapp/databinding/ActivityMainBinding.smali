.class public final Lcom/isaigu/gymapp/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cal:Lcom/isaigu/gymapp/widget/CustomCalendar;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/isaigu/gymapp/widget/CustomCalendar;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "cal"    # Lcom/isaigu/gymapp/widget/CustomCalendar;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/ActivityMainBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 26
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/ActivityMainBinding;->cal:Lcom/isaigu/gymapp/widget/CustomCalendar;

    .line 27
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/ActivityMainBinding;
    .locals 4
    .param p0, "rootView"    # Landroid/view/View;

    .line 56
    const v0, 0x7f090061

    .line 57
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/CustomCalendar;

    .line 58
    .local v1, "cal":Lcom/isaigu/gymapp/widget/CustomCalendar;
    if-eqz v1, :cond_0

    .line 62
    new-instance v2, Lcom/isaigu/gymapp/databinding/ActivityMainBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v3, v1}, Lcom/isaigu/gymapp/databinding/ActivityMainBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/isaigu/gymapp/widget/CustomCalendar;)V

    return-object v2

    .line 59
    :cond_0
    nop

    .line 64
    .end local v1    # "cal":Lcom/isaigu/gymapp/widget/CustomCalendar;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 43
    const v0, 0x7f0b001b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/ActivityMainBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/ActivityMainBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
