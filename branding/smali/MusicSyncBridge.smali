.class public Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;
.super Ljava/lang/Object;
.source "MusicSyncBridge.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachManager(Landroid/app/Activity;)Z
    .registers 5

    .line 24
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 25
    return v0

    .line 28
    :cond_4
    :try_start_4
    instance-of v1, p0, Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_9

    .line 29
    return v0

    .line 31
    :cond_9
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 32
    if-nez p0, :cond_12

    .line 33
    return v0

    .line 35
    :cond_12
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 36
    if-nez p0, :cond_19

    .line 37
    return v0

    .line 39
    :cond_19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 40
    instance-of v2, v1, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v2, :cond_36

    .line 41
    check-cast v1, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    iget-object p0, v1, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->tryAttach(Lcom/isaigu/gymapp/train/TrainItemManager;)Z

    move-result p0

    return p0

    .line 43
    :cond_36
    instance-of v2, v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    if-eqz v2, :cond_59

    .line 44
    check-cast v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    .line 45
    iget-object v2, v1, Lcom/isaigu/gymapp/fragment/MainFragment;->fragment_now:Landroid/support/v4/app/Fragment;

    .line 46
    instance-of v3, v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v3, :cond_4e

    .line 47
    check-cast v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->tryAttach(Lcom/isaigu/gymapp/train/TrainItemManager;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 48
    const/4 p0, 0x1

    return p0

    .line 51
    :cond_4e
    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 52
    if-eqz v1, :cond_59

    .line 53
    iget-object p0, v1, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->tryAttach(Lcom/isaigu/gymapp/train/TrainItemManager;)Z

    move-result p0
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_5b

    return p0

    .line 56
    :cond_59
    goto :goto_1d

    .line 58
    :cond_5a
    goto :goto_5c

    .line 57
    :catchall_5b
    move-exception p0

    .line 59
    :goto_5c
    return v0
.end method

.method private static tryAttach(Lcom/isaigu/gymapp/train/TrainItemManager;)Z
    .registers 1

    .line 16
    if-nez p0, :cond_4

    .line 17
    const/4 p0, 0x0

    return p0

    .line 19
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setManager(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 20
    const/4 p0, 0x1

    return p0
.end method
