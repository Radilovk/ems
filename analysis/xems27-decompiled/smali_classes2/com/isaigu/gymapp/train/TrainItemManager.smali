.class public Lcom/isaigu/gymapp/train/TrainItemManager;
.super Ljava/lang/Object;
.source "TrainItemManager.java"


# instance fields
.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation
.end field

.field public partsControl:[Z

.field private partsDisabled:[Z


# direct methods
.method public constructor <init>([Z[Z)V
    .locals 1
    .param p1, "partsDisabled"    # [Z
    .param p2, "partsControl"    # [Z

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->partsDisabled:[Z

    .line 17
    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->partsControl:[Z

    .line 18
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->addEmptyItem()V

    .line 19
    return-void
.end method

.method private addEmptyItem()V
    .locals 6

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "deviceCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "emptyItems":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/train/model/TrainItem;>;"
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 97
    .local v3, "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v3    # "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    :goto_1
    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 105
    .restart local v3    # "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    .end local v3    # "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    goto :goto_2

    .line 107
    :cond_2
    const/4 v2, 0x6

    if-lt v0, v2, :cond_3

    .line 108
    return-void

    .line 110
    :cond_3
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v2, :cond_4

    .line 111
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {v4, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;-><init>(Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 113
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    rsub-int/lit8 v4, v0, 0x3

    if-ge v2, v4, :cond_5

    .line 114
    iget-object v4, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    new-instance v5, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {v5, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;-><init>(Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    .end local v2    # "i":I
    :cond_5
    :goto_4
    return-void
.end method

.method private getItemIndexByMac(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 83
    .local v1, "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    goto :goto_1

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v2, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 81
    .end local v1    # "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$addAllPartValue$6(Ljava/util/concurrent/atomic/AtomicBoolean;ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p0, "anyMaSelected"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "value"    # I
    .param p2, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 66
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    invoke-virtual {p2, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic lambda$addAllPartValue$7(ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p0, "value"    # I
    .param p1, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 72
    invoke-virtual {p1, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(I)V

    return-void
.end method

.method static synthetic lambda$closeAll$4(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p0, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->close()V

    return-void
.end method

.method static synthetic lambda$disConnected$0(Ljava/lang/String;Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .locals 1
    .param p0, "mac"    # Ljava/lang/String;
    .param p1, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 44
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$disConnected$1(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p0, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 44
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->close()V

    return-void
.end method

.method static synthetic lambda$notEmptyItems$8(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .locals 1
    .param p0, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 77
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$resetAll$5(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p0, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 60
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->reset()V

    return-void
.end method

.method static synthetic lambda$startAll$2(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p0, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 48
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V

    return-void
.end method

.method static synthetic lambda$stopAll$3(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0
    .param p0, "i"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 52
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    return-void
.end method


# virtual methods
.method public addAllPartValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 65
    .local v0, "anyMaSelected":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;

    invoke-direct {v2, v0, p1}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$NH_2vasCxMVn7scoo3q5zW5xA-M;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$UF59B4EXu0W6VouWuS5ErUQhZs4;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    :cond_0
    return-void
.end method

.method public addTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 3
    .param p1, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 23
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemIndexByMac(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    .local v0, "oldIndex":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 25
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 28
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->partsDisabled:[Z

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->partsControl:[Z

    invoke-virtual {p1, v1, v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->init([Z[Z)V

    .line 31
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->addEmptyItem()V

    .line 32
    return-void
.end method

.method public closeAll()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$ssmggD6556uKwmvrE6Jxr09vWQg;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$ssmggD6556uKwmvrE6Jxr09vWQg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    return-void
.end method

.method public disConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8QiScp-GZjwaEkIyUVx85Se19CM;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8QiScp-GZjwaEkIyUVx85Se19CM;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    return-void
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public notEmptyItems()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$Kosc8Ha0r48eyhMxskX_v4sFLfU;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public removeTrainItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 1
    .param p1, "item"    # Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 35
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->close()V

    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainItemManager;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->addEmptyItem()V

    .line 41
    return-void
.end method

.method public resetAll()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 61
    return-void
.end method

.method public startAll()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$dckSelME1xT1TvFlGaBew1-ULiw;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$dckSelME1xT1TvFlGaBew1-ULiw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    return-void
.end method

.method public stopAll()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->notEmptyItems()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$BfRETC9lVVHxNTQpHrRL39OJZCU;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    return-void
.end method
