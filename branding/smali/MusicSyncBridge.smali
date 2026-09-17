.class public Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;
.super Ljava/lang/Object;
.source "MusicSyncBridge.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachManager(Landroid/app/Activity;)Z
    .registers 3

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 77
    const/4 p0, 0x1

    return p0

    .line 79
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    .line 80
    const/4 v0, 0x0

    if-nez p0, :cond_10

    .line 81
    return v0

    .line 83
    :cond_10
    instance-of v1, p0, Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_15

    .line 84
    return v0

    .line 87
    :cond_15
    :try_start_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 89
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->collectFragments(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 90
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->findNewTrainFragment(Ljava/util/List;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    move-result-object p0

    .line 91
    if-eqz p0, :cond_2e

    .line 92
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->tryAttach(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z

    move-result p0
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2f

    return p0

    .line 95
    :cond_2e
    goto :goto_30

    .line 94
    :catchall_2f
    move-exception p0

    .line 96
    :goto_30
    return v0
.end method

.method private static collectFragments(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 30
    if-eqz p0, :cond_2d

    if-nez p1, :cond_5

    goto :goto_2d

    .line 34
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 35
    if-nez p0, :cond_c

    .line 36
    return-void

    .line 38
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 39
    if-nez v0, :cond_1f

    .line 40
    goto :goto_10

    .line 42
    :cond_1f
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->collectFragments(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2b

    .line 44
    goto :goto_10

    .line 46
    :cond_2a
    goto :goto_2c

    .line 45
    :catchall_2b
    move-exception p0

    .line 47
    :goto_2c
    return-void

    .line 31
    :cond_2d
    :goto_2d
    return-void
.end method

.method private static findNewTrainFragment(Ljava/util/List;)Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Lcom/isaigu/gymapp/fragment/NewTrainFragment;"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 51
    return-object v0

    .line 53
    :cond_4
    nop

    .line 54
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 55
    instance-of v2, v1, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v2, :cond_1c

    .line 56
    check-cast v1, Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    return-object v1

    .line 58
    :cond_1c
    instance-of v2, v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    if-eqz v2, :cond_28

    .line 59
    check-cast v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    .line 60
    iget-object v2, v1, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    if-eqz v2, :cond_28

    .line 61
    iget-object v0, v1, Lcom/isaigu/gymapp/fragment/MainFragment;->newTrainFragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 64
    :cond_28
    goto :goto_9

    .line 65
    :cond_29
    return-object v0
.end method

.method private static resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 69
    if-eqz p0, :cond_3

    .line 70
    return-object p0

    .line 72
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private static tryAttach(Lcom/isaigu/gymapp/fragment/NewTrainFragment;)Z
    .registers 1

    .line 26
    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/isaigu/gymapp/fragment/NewTrainFragment;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->tryAttach(Lcom/isaigu/gymapp/train/TrainItemManager;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static tryAttach(Lcom/isaigu/gymapp/train/TrainItemManager;)Z
    .registers 1

    .line 18
    if-nez p0, :cond_4

    .line 19
    const/4 p0, 0x0

    return p0

    .line 21
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setManager(Lcom/isaigu/gymapp/train/TrainItemManager;)V

    .line 22
    const/4 p0, 0x1

    return p0
.end method
