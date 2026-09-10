.class public Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;
.super Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.source "FragmentLifecycleCallbacksImpl.java"


# instance fields
.field private mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;


# direct methods
.method public constructor <init>(Lme/jessyan/autosize/AutoAdaptStrategy;)V
    .locals 0
    .param p1, "autoAdaptStrategy"    # Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    .line 39
    iput-object p1, p0, Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 40
    return-void
.end method


# virtual methods
.method public onFragmentCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "f"    # Landroid/support/v4/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    iget-object v0, p0, Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lme/jessyan/autosize/AutoAdaptStrategy;->applyAdapt(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 47
    :cond_0
    return-void
.end method

.method public setAutoAdaptStrategy(Lme/jessyan/autosize/AutoAdaptStrategy;)V
    .locals 0
    .param p1, "autoAdaptStrategy"    # Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 55
    iput-object p1, p0, Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 56
    return-void
.end method
