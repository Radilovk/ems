.class public final Lcom/isaigu/gymapp/widget/XemsLocalStore;
.super Ljava/lang/Object;
.source "XemsLocalStore.java"


# static fields
.field static final FILE_DEVICES:Ljava/lang/String; = "file_name_device_data"

.field static final FILE_OFFLINE_USERS:Ljava/lang/String; = "file_name_offline_user_data"

.field static final FILE_PROGRAMS:Ljava/lang/String; = "file_name_train_data"

.field private static final FILE_PROTOCOL:Ljava/lang/String; = "file_name_register_protocol_data"

.field static final FILE_USERS:Ljava/lang/String; = "file_name_user_data"

.field private static final FIRST_USER_ID:J = 0x186a0L

.field private static final KEY_DELETED_PROGRAMS:Ljava/lang/String; = "deleted_program_ids"

.field private static final KEY_MIGRATED:Ljava/lang/String; = "migrated_v1"

.field private static final KEY_NEXT_DEVICE_ID:Ljava/lang/String; = "next_device_id"

.field private static final KEY_NEXT_PROGRAM_ID:Ljava/lang/String; = "next_program_id"

.field private static final KEY_NEXT_USER_ID:Ljava/lang/String; = "next_user_id"

.field private static final KEY_PAIRED_MACS:Ljava/lang/String; = "paired_macs"

.field private static final MAIN:Landroid/os/Handler;

.field private static final PREFS:Ljava/lang/String; = "xems_local_store"

.field static final SAMPLE_USER_ID:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->showDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->removeFromAdapterList(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static autoSelectFirstProgram(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 503
    if-nez p0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 507
    const-string v0, "programDatas"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 508
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 509
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 510
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 514
    const-string v2, "updateSelectedProgram"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 515
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 516
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    const-string v1, "xems_local"

    const-string v2, "autoSelectFirstProgram"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static bootstrapOnline(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .locals 3

    .prologue
    .line 92
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 94
    :goto_0
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadDevices(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadProtocol()V

    .line 96
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadUsers()V

    .line 97
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadPrograms()V

    .line 98
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->migrateOnce(Landroid/content/Context;)V

    .line 99
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 100
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 101
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->requestCloudSync()V

    .line 105
    const-string v0, "initUsers"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->callPrivate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const-string v0, "initTrainPrograms"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->callPrivate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "xems_local"

    const-string v2, "bootstrapOnline"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static bumpCounters(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 891
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_user_id"

    .line 892
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_program_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_device_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 893
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 895
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    .line 896
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    .line 897
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    .line 898
    return-void
.end method

.method private static callPrivate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 117
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "xems_local"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static deletedPrograms()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 187
    if-nez v1, :cond_1

    .line 195
    :cond_0
    return-object v0

    .line 190
    :cond_1
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "deleted_program_ids"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 191
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 931
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static ensureDeviceRecord(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 769
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 772
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 773
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 776
    :cond_1
    new-instance v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    .line 777
    iput-object p0, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    .line 778
    iput-object p0, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 779
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    .line 780
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveDevices()V

    goto :goto_0
.end method

.method private static ensureSampleUser(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    .line 245
    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 246
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 247
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 264
    :goto_1
    return-void

    .line 245
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_1
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 252
    iput-wide v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 253
    const-string v1, "\u041f\u0440\u0438\u043c\u0435\u0440\u0435\u043d \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Sample client"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 254
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 255
    sget-object v1, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 256
    const/16 v1, 0xaf

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 257
    const/high16 v1, 0x42960000    # 75.0f

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 259
    const/4 v3, 0x1

    const/16 v4, -0x23

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 260
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 261
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 262
    const-string v1, "\u0426\u0435\u043b: \u0422\u043e\u043d\u0443\u0441 \u00b7 \u0424\u043e\u0440\u043c\u0430: \u0421\u0440\u0435\u0434\u0435\u043d"

    const-string v3, "Goal: Tone \u00b7 Fitness: Intermediate"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;

    .line 263
    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public static exportBackup(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 604
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 608
    :cond_1
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 609
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    const-string v3, "exportedAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    const-string v3, "users"

    const-string v4, "file_name_user_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    const-string v3, "programs"

    const-string v4, "file_name_train_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    const-string v3, "devices"

    const-string v4, "file_name_device_data"

    const-class v5, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    const-string v3, "records"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    const-string v3, "pairedMacs"

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 618
    if-eqz v3, :cond_0

    .line 621
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 622
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 623
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 624
    const-string v2, "\u0414\u0430\u043d\u043d\u0438\u0442\u0435 \u0441\u0430 \u0435\u043a\u0441\u043f\u043e\u0440\u0442\u0438\u0440\u0430\u043d\u0438"

    const-string v3, "Data exported"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 625
    goto/16 :goto_0

    .line 626
    :catch_0
    move-exception v2

    .line 627
    const-string v3, "xems_local"

    const-string v4, "exportBackup"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    const-string v2, "\u0415\u043a\u0441\u043f\u043e\u0440\u0442\u044a\u0442 \u043d\u0435 \u0443\u0441\u043f\u044f"

    const-string v3, "Export failed"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public static filterDevices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static finishSetup()V
    .locals 0

    .prologue
    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->finishSetup()V

    .line 85
    return-void
.end method

.method public static finishUserDialog(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .locals 2

    .prologue
    .line 546
    if-nez p0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_0

    instance-of v1, p0, Lcom/isaigu/gymapp/BaseDialogFragment;

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    goto :goto_0
.end method

.method static getAppContext()Landroid/content/Context;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 744
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 745
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 746
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_0
    return-object v0

    .line 747
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 748
    goto :goto_0
.end method

.method private static getPairedMacs(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 786
    if-nez p0, :cond_0

    move-object v0, v1

    .line 800
    :goto_0
    return-object v0

    .line 789
    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "paired_macs"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 791
    goto :goto_0

    .line 793
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 794
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 795
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 797
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 800
    goto :goto_0
.end method

.method public static importBackup(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 635
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 697
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442 \u0438\u043c\u0430 \u0441\u0430\u043c\u043e \u043f\u0440\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v3, "Import is only available in the tablet setup"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 641
    goto :goto_0

    .line 644
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 645
    if-nez v0, :cond_3

    move v0, v1

    .line 646
    goto :goto_0

    .line 648
    :cond_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 652
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    const-string v3, "xems_local"

    const-string v4, "importBackup"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442\u044a\u0442 \u043d\u0435 \u0443\u0441\u043f\u044f"

    const-string v3, "Import failed"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 697
    goto :goto_0

    .line 654
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 656
    if-nez v0, :cond_5

    move v0, v1

    .line 657
    goto :goto_0

    .line 659
    :cond_5
    const-string v3, "users"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    const-class v4, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 660
    const-string v4, "programs"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 661
    const-string v5, "devices"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    const-class v6, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 662
    if-eqz v3, :cond_6

    .line 663
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iput-object v3, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 664
    const-string v6, "file_name_user_data"

    const-class v7, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v6, v7, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 666
    :cond_6
    if-eqz v4, :cond_7

    .line 667
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iput-object v4, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 668
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 669
    const-string v3, "file_name_train_data"

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v6, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 671
    :cond_7
    if-eqz v5, :cond_8

    .line 672
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iput-object v5, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 673
    const-string v3, "file_name_device_data"

    const-class v4, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 675
    :cond_8
    const-string v3, "records"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 676
    const-string v3, "records"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->replaceRecords(Lcom/alibaba/fastjson/JSONArray;)V

    .line 678
    :cond_9
    const-string v3, "pairedMacs"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 679
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 680
    const-string v3, "pairedMacs"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 681
    if-eqz v5, :cond_a

    move v3, v1

    .line 682
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 683
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 686
    :cond_a
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 689
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->bumpCounters(Landroid/content/Context;)V

    .line 690
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 691
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 692
    const-string v0, "\u0414\u0430\u043d\u043d\u0438\u0442\u0435 \u0441\u0430 \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u0430\u043d\u0438"

    const-string v3, "Data imported"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 693
    goto/16 :goto_0
.end method

.method public static isAdminSession()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 75
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->isSetupMode()Z

    move-result v0

    return v0
.end method

.method public static isAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 336
    :goto_0
    return v0

    .line 326
    :cond_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 328
    goto :goto_0

    .line 330
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 331
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 333
    goto :goto_0

    :cond_3
    move v0, v1

    .line 336
    goto :goto_0
.end method

.method public static isUserSession()Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;
    .locals 5

    .prologue
    .line 757
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 758
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 759
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 760
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 761
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    :goto_1
    return-object v0

    .line 759
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 765
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static loadDevices(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    .line 283
    const-string v0, "file_name_device_data"

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    :cond_0
    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 288
    return-void
.end method

.method public static loadPrograms()V
    .locals 4

    .prologue
    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    .line 268
    const-string v0, "file_name_train_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 269
    if-nez v0, :cond_1

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 272
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 273
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->repairSeededProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    .line 272
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 275
    :cond_0
    iput-object v1, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 276
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->seedDefaultProgramIfNeeded()V

    .line 277
    iget-object v0, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 279
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static loadProtocol()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "file_name_register_protocol_data"

    const-class v1, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 295
    :cond_0
    return-void
.end method

.method public static loadUsers()V
    .locals 8

    .prologue
    .line 217
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    .line 218
    const-string v0, "file_name_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 219
    if-nez v0, :cond_3

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 223
    :goto_0
    const-string v0, "file_name_offline_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    const-string v0, "file_name_offline_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 228
    :cond_0
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->ensureSampleUser(Ljava/util/List;)V

    .line 229
    iput-object v1, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 231
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 232
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 233
    if-eqz v0, :cond_1

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 231
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 237
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 238
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static macKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 820
    if-nez p0, :cond_0

    .line 821
    const-string v0, ""

    .line 836
    :goto_0
    return-object v0

    .line 823
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 826
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 827
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 828
    const/16 v5, 0x30

    if-lt v1, v5, :cond_1

    const/16 v5, 0x39

    if-le v1, v5, :cond_2

    :cond_1
    const/16 v5, 0x41

    if-lt v1, v5, :cond_5

    const/16 v5, 0x46

    if-gt v1, v5, :cond_5

    .line 829
    :cond_2
    if-lez v2, :cond_3

    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_3

    .line 830
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 826
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    .line 836
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method static mergeCloudPrograms(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    .line 154
    iget-object v0, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 157
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->deletedPrograms()Ljava/util/Set;

    move-result-object v7

    .line 158
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 159
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 160
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 161
    instance-of v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    if-nez v1, :cond_2

    .line 159
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 164
    :cond_2
    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 165
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v4, v3

    move v5, v3

    .line 169
    :goto_2
    iget-object v1, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_4

    if-nez v5, :cond_4

    .line 170
    iget-object v1, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 171
    if-eqz v1, :cond_3

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v5, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    .line 169
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    move v5, v3

    .line 171
    goto :goto_3

    .line 173
    :cond_4
    if-nez v5, :cond_1

    .line 174
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 178
    invoke-static {v8}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 179
    iget-object v0, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 182
    :cond_6
    return-void
.end method

.method static mergeCloudUsers(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v8

    .line 126
    iget-object v0, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    :cond_0
    move v2, v3

    move v4, v3

    .line 130
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 131
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 132
    instance-of v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_1

    move v1, v4

    .line 130
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_0

    .line 135
    :cond_1
    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    move v5, v3

    move v6, v3

    .line 137
    :goto_2
    iget-object v1, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_3

    if-nez v6, :cond_3

    .line 138
    iget-object v1, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 139
    if-eqz v1, :cond_2

    iget-wide v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v12, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v1, v10, v12

    if-nez v1, :cond_2

    move v6, v7

    .line 137
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_2
    move v6, v3

    .line 139
    goto :goto_3

    .line 141
    :cond_3
    if-nez v6, :cond_6

    .line 142
    iget-object v1, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    .line 143
    goto :goto_1

    .line 146
    :cond_4
    if-eqz v4, :cond_5

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 149
    :cond_5
    return-void

    :cond_6
    move v1, v4

    goto :goto_1
.end method

.method private static migrateOnce(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 302
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "migrated_v1"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 307
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v1, v0

    .line 308
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 309
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 310
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 311
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 314
    :cond_3
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 316
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migrated_v1"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static nextDeviceId()J
    .locals 12

    .prologue
    const-wide/16 v2, 0x1

    .line 874
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 875
    if-nez v7, :cond_0

    move-wide v0, v2

    .line 876
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v8, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 877
    const/4 v6, 0x0

    move-wide v4, v0

    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 878
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 879
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-ltz v1, :cond_3

    .line 880
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 877
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v0

    goto :goto_1

    .line 875
    :cond_0
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_device_id"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 883
    :cond_1
    if-eqz v7, :cond_2

    .line 884
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_device_id"

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 886
    :cond_2
    return-wide v4

    :cond_3
    move-wide v0, v4

    goto :goto_2
.end method

.method private static nextProgramId()J
    .locals 12

    .prologue
    const-wide/16 v2, 0x1

    .line 858
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 859
    if-nez v7, :cond_0

    move-wide v0, v2

    .line 860
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v8, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 861
    const/4 v6, 0x0

    move-wide v4, v0

    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 862
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 863
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-ltz v1, :cond_3

    .line 864
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 861
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v0

    goto :goto_1

    .line 859
    :cond_0
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_program_id"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 867
    :cond_1
    if-eqz v7, :cond_2

    .line 868
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_program_id"

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 870
    :cond_2
    return-wide v4

    :cond_3
    move-wide v0, v4

    goto :goto_2
.end method

.method private static nextUserId()J
    .locals 12

    .prologue
    const-wide/32 v0, 0x186a0

    const-wide/16 v10, 0x1

    .line 841
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 842
    if-nez v5, :cond_0

    .line 843
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v6, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 844
    const/4 v4, 0x0

    move-wide v2, v0

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 845
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 846
    if-eqz v0, :cond_3

    iget-wide v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    neg-long v8, v8

    cmp-long v1, v8, v2

    if-ltz v1, :cond_3

    .line 847
    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    neg-long v0, v0

    add-long/2addr v0, v10

    .line 844
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_1

    .line 842
    :cond_0
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "next_user_id"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 850
    :cond_1
    if-eqz v5, :cond_2

    .line 851
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_user_id"

    add-long v4, v2, v10

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 853
    :cond_2
    neg-long v0, v2

    return-wide v0

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method

.method public static onDeviceConnected(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 479
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 485
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 491
    :cond_2
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->ensureDeviceRecord(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    const-string v1, "xems_local"

    const-string v2, "onDeviceConnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 488
    :cond_3
    :try_start_1
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public static onDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 358
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    :cond_2
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string v1, "xems_local"

    const-string v2, "onDiscovered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onScanLost(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 377
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$2;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore$2;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static pairedCount(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 498
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method static parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 936
    if-nez p0, :cond_0

    .line 937
    const/4 v0, 0x0

    .line 939
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 753
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_local_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 923
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 924
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 925
    check-cast v0, Ljava/util/List;

    .line 927
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static rememberDeletedProgram(J)V
    .locals 6

    .prologue
    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 200
    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->deletedPrograms()Ljava/util/Set;

    move-result-object v0

    .line 204
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 208
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :cond_3
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deleted_program_ids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static removeFromAdapterList(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 391
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 392
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 393
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 394
    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 400
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 401
    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "selects"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 406
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 407
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 408
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 409
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    :cond_1
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyDataSetChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const-string v1, "xems_local"

    const-string v2, "onScanLost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 399
    :cond_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 417
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 411
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static removeProgram(J)V
    .locals 6

    .prologue
    .line 587
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->rememberDeletedProgram(J)V

    .line 588
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    .line 589
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 593
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 594
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p0

    if-nez v0, :cond_1

    .line 595
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 592
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 598
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    goto :goto_0
.end method

.method private static repairSeededProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 724
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_0

    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Workout 1"

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    const/16 v2, 0x55

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 733
    invoke-static {}, Lcom/isaigu/gymapp/bean/TrainProgram;->getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 734
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 735
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 736
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 737
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 738
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 739
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static saveDevices()V
    .locals 3

    .prologue
    .line 915
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 916
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 917
    const-string v1, "file_name_device_data"

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 919
    :cond_0
    return-void
.end method

.method private static savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    if-nez p0, :cond_0

    .line 816
    :goto_0
    return-void

    .line 807
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 809
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 811
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 813
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 815
    :cond_2
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "paired_macs"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static saveProgram(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 558
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    :try_start_0
    iput-object p3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 563
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 564
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 565
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0430 \u043b\u043e\u043a\u0430\u043b\u043d\u043e"

    const-string v1, "Program saved locally"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    const-string v1, "xems_local"

    const-string v2, "saveProgram"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    const-string v0, "\u0413\u0440\u0435\u0448\u043a\u0430 \u043f\u0440\u0438 \u0437\u0430\u043f\u0430\u0437\u0432\u0430\u043d\u0435"

    const-string v1, "Save failed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static savePrograms()V
    .locals 3

    .prologue
    .line 908
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 909
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 910
    const-string v1, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 912
    :cond_0
    return-void
.end method

.method public static saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V
    .locals 4

    .prologue
    .line 526
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 530
    if-nez p2, :cond_3

    .line 531
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 532
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 533
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v1, :cond_2

    .line 534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 536
    :cond_2
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 541
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 542
    const-string v0, "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u044f\u0442 \u0435 \u0437\u0430\u043f\u0430\u0437\u0435\u043d \u043b\u043e\u043a\u0430\u043b\u043d\u043e"

    const-string v1, "User saved locally"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_3
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_1
.end method

.method private static saveUsers()V
    .locals 3

    .prologue
    .line 901
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 902
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 903
    const-string v1, "file_name_user_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 905
    :cond_0
    return-void
.end method

.method private static seedDefaultProgramIfNeeded()V
    .locals 4

    .prologue
    .line 708
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 709
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/bean/TrainProgram;->getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 713
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 714
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    const-string v3, "Workout 1"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 716
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static showDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 427
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 428
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 429
    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 434
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 435
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 436
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    monitor-exit v0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    const-string v1, "xems_local"

    const-string v2, "showDiscovered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 434
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 440
    :cond_2
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v1

    .line 441
    if-nez v1, :cond_3

    .line 442
    new-instance v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    .line 443
    iput-object p1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    .line 444
    iput-object p1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 445
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    .line 447
    :cond_3
    iput-object p2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "selects"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 453
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 454
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 455
    if-eqz v1, :cond_4

    .line 456
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 457
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 460
    :catch_1
    move-exception v1

    .line 463
    :cond_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 464
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyDataSetChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "start_mac_address_timer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 466
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 467
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method static storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 6

    .prologue
    .line 575
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 576
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_0

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 580
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 582
    :cond_2
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 583
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 584
    return-void
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method
