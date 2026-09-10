.class public Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;
.super Lcom/isaigu/gymapp/BaseDialogFragment;
.source "ProgramPlanDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;,
        Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;

.field private listener:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;

.field private mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private programPlanBean:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

.field private programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

.field private sureButton:Landroid/widget/Button;

.field private swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

.field private timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;-><init>()V

    .line 85
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$2;-><init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    .line 100
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$3;-><init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)Lcom/isaigu/gymapp/bean/ProgramPlanBean;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanBean:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->adapter:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;

    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->listener:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;

    return-object v0
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .line 46
    const v0, 0x7f0b005c

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 122
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 124
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 126
    .local v1, "win":Landroid/view/Window;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 128
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->timeView:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->sureButton:Landroid/widget/Button;

    .line 56
    const v1, 0x7f09013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    .line 58
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->swipeMenuCreator:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuCreator;)V

    .line 59
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->mMenuItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setSwipeMenuItemClickListener(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 62
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    new-instance v2, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 63
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "programPlanBean"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanBean:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->timeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanBean:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/ProgramPlanBean;->dateFullString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v1, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanBean:Lcom/isaigu/gymapp/bean/ProgramPlanBean;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;-><init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;Lcom/isaigu/gymapp/bean/ProgramPlanBean;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->adapter:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$PlanAdapter;

    .line 74
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->programPlanListView:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;

    invoke-virtual {v2, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->sureButton:Landroid/widget/Button;

    new-instance v2, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$1;-><init>(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-object v0
.end method

.method public setListener(Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;

    .line 132
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ProgramPlanDialog;->listener:Lcom/isaigu/gymapp/dialog/ProgramPlanDialog$ProgramPlanRemoveListener;

    .line 133
    return-void
.end method
