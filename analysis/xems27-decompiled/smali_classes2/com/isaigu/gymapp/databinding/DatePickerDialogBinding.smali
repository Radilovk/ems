.class public final Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;
.super Ljava/lang/Object;
.source "DatePickerDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final datepicker:Landroid/widget/DatePicker;

.field public final ok:Lcom/isaigu/gymapp/widget/MyButton;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/DatePicker;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "datepicker"    # Landroid/widget/DatePicker;
    .param p3, "ok"    # Lcom/isaigu/gymapp/widget/MyButton;
    .param p4, "title"    # Landroid/widget/TextView;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 35
    iput-object p2, p0, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;->datepicker:Landroid/widget/DatePicker;

    .line 36
    iput-object p3, p0, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;->ok:Lcom/isaigu/gymapp/widget/MyButton;

    .line 37
    iput-object p4, p0, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;->title:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 67
    const v0, 0x7f090080

    .line 68
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 69
    .local v1, "datepicker":Landroid/widget/DatePicker;
    if-eqz v1, :cond_2

    .line 73
    const v0, 0x7f090112

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/MyButton;

    .line 75
    .local v2, "ok":Lcom/isaigu/gymapp/widget/MyButton;
    if-eqz v2, :cond_1

    .line 79
    const v0, 0x7f0901af

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, "title":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 85
    new-instance v4, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/DatePicker;Lcom/isaigu/gymapp/widget/MyButton;Landroid/widget/TextView;)V

    return-object v4

    .line 82
    :cond_0
    goto :goto_0

    .line 76
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 70
    .end local v2    # "ok":Lcom/isaigu/gymapp/widget/MyButton;
    :cond_2
    nop

    .line 87
    .end local v1    # "datepicker":Landroid/widget/DatePicker;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 54
    const v0, 0x7f0b0022

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
    invoke-static {v0}, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;->bind(Landroid/view/View;)Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/databinding/DatePickerDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
