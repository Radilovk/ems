.class public Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacksImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

.field private mFragmentLifecycleCallbacks:Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;


# direct methods
.method public constructor <init>(Lme/jessyan/autosize/AutoAdaptStrategy;)V
    .locals 1
    .param p1, "autoAdaptStrategy"    # Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;

    invoke-direct {v0, p1}, Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;-><init>(Lme/jessyan/autosize/AutoAdaptStrategy;)V

    iput-object v0, p0, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;->mFragmentLifecycleCallbacks:Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;

    .line 46
    iput-object p1, p0, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 47
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->isCustomFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;->mFragmentLifecycleCallbacks:Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 58
    :cond_0
    iget-object v0, p0, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {v0, p1, p1}, Lme/jessyan/autosize/AutoAdaptStrategy;->applyAdapt(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 61
    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 93
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 78
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 73
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 88
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 65
    iget-object v0, p0, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1, p1}, Lme/jessyan/autosize/AutoAdaptStrategy;->applyAdapt(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 83
    return-void
.end method

.method public setAutoAdaptStrategy(Lme/jessyan/autosize/AutoAdaptStrategy;)V
    .locals 1
    .param p1, "autoAdaptStrategy"    # Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 101
    iput-object p1, p0, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 102
    iget-object v0, p0, Lme/jessyan/autosize/ActivityLifecycleCallbacksImpl;->mFragmentLifecycleCallbacks:Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;

    invoke-virtual {v0, p1}, Lme/jessyan/autosize/FragmentLifecycleCallbacksImpl;->setAutoAdaptStrategy(Lme/jessyan/autosize/AutoAdaptStrategy;)V

    .line 103
    return-void
.end method
