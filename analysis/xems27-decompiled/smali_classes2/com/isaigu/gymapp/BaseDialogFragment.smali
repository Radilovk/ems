.class public abstract Lcom/isaigu/gymapp/BaseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BaseDialogFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/message/EventListener;


# instance fields
.field private parentActivity:Lcom/isaigu/gymapp/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentActivity()Lcom/isaigu/gymapp/BaseActivity;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseDialogFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    return-object v0
.end method

.method public abstract getViewIid()I
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 0
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 67
    return-void
.end method

.method protected hideSoftInput(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 48
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 51
    .end local v0    # "manager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseDialogFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 58
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 74
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 75
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0e00a2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 76
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getViewIid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/isaigu/gymapp/BaseDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/BaseDialogFragment$1;-><init>(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .line 86
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 87
    invoke-static {p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->setKeyBoardVisible(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 91
    :cond_0
    return-void
.end method
