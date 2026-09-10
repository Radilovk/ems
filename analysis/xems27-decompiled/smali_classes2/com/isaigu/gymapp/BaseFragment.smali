.class public abstract Lcom/isaigu/gymapp/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/message/EventListener;


# instance fields
.field private parentActivity:Lcom/isaigu/gymapp/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    .locals 1
    .param p1, "baseDialogFragment"    # Lcom/isaigu/gymapp/BaseDialogFragment;

    .line 86
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 87
    return-void
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "resId"    # I

    .line 69
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDimension(I)F
    .locals 1
    .param p1, "resId"    # I

    .line 73
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getParentActivity()Lcom/isaigu/gymapp/BaseActivity;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    return-object v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 1
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 33
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 34
    .local v0, "event":S
    nop

    .line 37
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseFragment;->parentActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->viewId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .line 50
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 51
    invoke-static {p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->setKeyBoardVisible(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 78
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    .locals 1
    .param p1, "baseDialogFragment"    # Lcom/isaigu/gymapp/BaseDialogFragment;

    .line 82
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 83
    return-void
.end method

.method protected abstract viewId()I
.end method
