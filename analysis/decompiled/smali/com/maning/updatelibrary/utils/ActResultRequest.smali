.class public Lcom/maning/updatelibrary/utils/ActResultRequest;
.super Ljava/lang/Object;
.source "ActResultRequest.java"


# instance fields
.field private fragment:Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0, p1}, Lcom/maning/updatelibrary/utils/ActResultRequest;->getEventDispatchFragment(Landroid/app/Activity;)Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/maning/updatelibrary/utils/ActResultRequest;->fragment:Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;

    .line 18
    return-void
.end method

.method private findEventDispatchFragment(Landroid/app/FragmentManager;)Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 36
    const-string v0, "on_act_result_event_dispatcher"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;

    return-object v0
.end method

.method private getEventDispatchFragment(Landroid/app/Activity;)Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 23
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-direct {p0, v1}, Lcom/maning/updatelibrary/utils/ActResultRequest;->findEventDispatchFragment(Landroid/app/FragmentManager;)Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;

    move-result-object v0

    .line 24
    .local v0, "fragment":Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;

    .end local v0    # "fragment":Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;
    invoke-direct {v0}, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;-><init>()V

    .line 27
    .restart local v0    # "fragment":Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "on_act_result_event_dispatcher"

    .line 28
    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 30
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 32
    :cond_0
    return-object v0
.end method


# virtual methods
.method public startForResult(Landroid/content/Intent;Lcom/maning/updatelibrary/utils/ActForResultCallback;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/maning/updatelibrary/utils/ActForResultCallback;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/maning/updatelibrary/utils/ActResultRequest;->fragment:Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;

    invoke-virtual {v0, p1, p2}, Lcom/maning/updatelibrary/utils/OnActResultEventDispatcherFragment;->startForResult(Landroid/content/Intent;Lcom/maning/updatelibrary/utils/ActForResultCallback;)V

    .line 41
    return-void
.end method
