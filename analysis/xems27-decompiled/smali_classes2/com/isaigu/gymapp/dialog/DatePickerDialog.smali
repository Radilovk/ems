.class public Lcom/isaigu/gymapp/dialog/DatePickerDialog;
.super Lcom/isaigu/gymapp/BaseDialogFragment;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;

.field private datePicker:Landroid/widget/DatePicker;

.field private ok:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    .line 24
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->callback:Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)Landroid/widget/DatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/DatePickerDialog;

    .line 24
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->datePicker:Landroid/widget/DatePicker;

    return-object v0
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .line 33
    const v0, 0x7f0b0022

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 78
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 80
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->datePicker:Landroid/widget/DatePicker;

    .line 43
    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->ok:Landroid/widget/Button;

    .line 46
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 47
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 48
    .local v2, "year":I
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 49
    .local v3, "month":I
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 51
    .local v4, "day":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "year"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 53
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "month"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "day"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 58
    :cond_0
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->datePicker:Landroid/widget/DatePicker;

    new-instance v6, Lcom/isaigu/gymapp/dialog/DatePickerDialog$1;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog$1;-><init>(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)V

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 63
    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->ok:Landroid/widget/Button;

    new-instance v6, Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/dialog/DatePickerDialog$2;-><init>(Lcom/isaigu/gymapp/dialog/DatePickerDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-object v0
.end method

.method public setCallback(Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;

    .line 84
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/DatePickerDialog;->callback:Lcom/isaigu/gymapp/dialog/DatePickerDialog$OnDateSelectedCallback;

    .line 85
    return-void
.end method
