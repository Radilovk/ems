.class public Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;
.super Ljava/lang/Object;
.source "MusicSyncBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachManager(Landroid/app/Activity;)Z
    .locals 4

    if-nez p0, :cond_has_activity

    const/4 p0, 0x0

    return p0

    :cond_has_activity
    :try_start_0
    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_fragment_activity

    const/4 p0, 0x0

    return p0

    :cond_fragment_activity
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_has_list

    const/4 p0, 0x0

    return p0

    :cond_has_list
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_loop
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fail

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/isaigu/gymapp/fragment/MainFragment;

    if-eqz v1, :cond_try_main

    check-cast v0, Lcom/isaigu/gymapp/fragment/MainFragment;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v0, :cond_try_main

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_try_main

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setManager(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    const/4 p0, 0x1

    return p0

    :cond_try_main
    goto :goto_loop

    :cond_fail
    const/4 p0, 0x0

    return p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    const/4 p0, 0x0

    return p0
.end method
