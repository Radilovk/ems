.class public Lme/jessyan/autosize/external/ExternalAdaptManager;
.super Ljava/lang/Object;
.source "ExternalAdaptManager.java"


# instance fields
.field private isRun:Z

.field private mCancelAdaptList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalAdaptInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lme/jessyan/autosize/external/ExternalAdaptInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addCancelAdaptOfActivity(Ljava/lang/Class;)Lme/jessyan/autosize/external/ExternalAdaptManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lme/jessyan/autosize/external/ExternalAdaptManager;"
        }
    .end annotation

    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 55
    :try_start_0
    const-string v0, "targetClass == null"

    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-boolean v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun:Z

    .line 59
    .end local p0    # "this":Lme/jessyan/autosize/external/ExternalAdaptManager;
    :cond_0
    iget-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mCancelAdaptList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mCancelAdaptList:Ljava/util/List;

    .line 62
    :cond_1
    iget-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mCancelAdaptList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-object p0

    .line 54
    .end local p1    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addExternalAdaptInfoOfActivity(Ljava/lang/Class;Lme/jessyan/autosize/external/ExternalAdaptInfo;)Lme/jessyan/autosize/external/ExternalAdaptManager;
    .locals 2
    .param p2, "info"    # Lme/jessyan/autosize/external/ExternalAdaptInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lme/jessyan/autosize/external/ExternalAdaptInfo;",
            ")",
            "Lme/jessyan/autosize/external/ExternalAdaptManager;"
        }
    .end annotation

    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 85
    :try_start_0
    const-string v0, "targetClass == null"

    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-boolean v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun:Z

    .line 89
    .end local p0    # "this":Lme/jessyan/autosize/external/ExternalAdaptManager;
    :cond_0
    iget-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mExternalAdaptInfos:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mExternalAdaptInfos:Ljava/util/Map;

    .line 92
    :cond_1
    iget-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mExternalAdaptInfos:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-object p0

    .line 84
    .end local p1    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "info":Lme/jessyan/autosize/external/ExternalAdaptInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getExternalAdaptInfoOfActivity(Ljava/lang/Class;)Lme/jessyan/autosize/external/ExternalAdaptInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lme/jessyan/autosize/external/ExternalAdaptInfo;"
        }
    .end annotation

    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 117
    :try_start_0
    const-string v0, "targetClass == null"

    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mExternalAdaptInfos:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 121
    :cond_0
    :try_start_1
    iget-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mExternalAdaptInfos:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/jessyan/autosize/external/ExternalAdaptInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 116
    .end local p0    # "this":Lme/jessyan/autosize/external/ExternalAdaptManager;
    .end local p1    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isCancelAdapt(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 103
    :try_start_0
    const-string v0, "targetClass == null"

    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mCancelAdaptList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->mCancelAdaptList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 102
    .end local p0    # "this":Lme/jessyan/autosize/external/ExternalAdaptManager;
    .end local p1    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isRun()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun:Z

    return v0
.end method

.method public setRun(Z)Lme/jessyan/autosize/external/ExternalAdaptManager;
    .locals 0
    .param p1, "run"    # Z

    .line 139
    iput-boolean p1, p0, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun:Z

    .line 140
    return-object p0
.end method
