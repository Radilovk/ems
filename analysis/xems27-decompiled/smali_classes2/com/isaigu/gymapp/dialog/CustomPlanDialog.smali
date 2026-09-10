.class public Lcom/isaigu/gymapp/dialog/CustomPlanDialog;
.super Lcom/isaigu/gymapp/BaseDialogFragment;
.source "CustomPlanDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;

.field private nameEditText:Landroid/widget/EditText;

.field private sureButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    .line 24
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->nameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/CustomPlanDialog;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 24
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->hideSoftInput(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;)Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/CustomPlanDialog;

    .line 24
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->listener:Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;

    return-object v0
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .line 32
    const v0, 0x7f0b0062

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 70
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 72
    .local v1, "win":Landroid/view/Window;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->sureButton:Landroid/widget/Button;

    .line 41
    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->nameEditText:Landroid/widget/EditText;

    .line 43
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->sureButton:Landroid/widget/Button;

    new-instance v2, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/CustomPlanDialog$1;-><init>(Lcom/isaigu/gymapp/dialog/CustomPlanDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-object v0
.end method

.method public setListener(Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;

    .line 77
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/CustomPlanDialog;->listener:Lcom/isaigu/gymapp/dialog/CustomPlanDialog$SaveProgramListener;

    .line 78
    return-void
.end method
