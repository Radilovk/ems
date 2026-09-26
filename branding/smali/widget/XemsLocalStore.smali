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

.field private static final SEEN_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 347
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    .line 350
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->showDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->removeFromAdapterList(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static autoSelectFirstProgram(Ljava/lang/Object;)V
    .registers 8

    .line 544
    if-nez p0, :cond_3

    .line 545
    return-void

    .line 547
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 548
    const-string v1, "programDatas"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 549
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 550
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 551
    if-eqz v1, :cond_3e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_3e

    .line 554
    :cond_20
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 555
    const-string v4, "updateSelectedProgram"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 556
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 557
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3f

    .line 560
    goto :goto_47

    .line 552
    :cond_3e
    :goto_3e
    return-void

    .line 558
    :catchall_3f
    move-exception p0

    .line 559
    const-string v0, "xems_local"

    const-string v1, "autoSelectFirstProgram"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    :goto_47
    return-void
.end method

.method public static bootstrapOnline(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .registers 3

    .line 92
    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 93
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    :goto_11
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
    if-eqz p0, :cond_3f

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->requestCloudSync()V

    .line 105
    const-string v0, "initUsers"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->callPrivate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const-string v0, "initTrainPrograms"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->callPrivate(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_40

    .line 110
    :cond_3f
    goto :goto_48

    .line 108
    :catchall_40
    move-exception p0

    .line 109
    const-string v0, "xems_local"

    const-string v1, "bootstrapOnline"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_48
    return-void
.end method

.method private static bumpCounters(Landroid/content/Context;)V
    .registers 2

    .line 932
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 933
    const-string v0, "next_user_id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "next_program_id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "next_device_id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 934
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 936
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    .line 937
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    .line 938
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    .line 939
    return-void
.end method

.method private static callPrivate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 120
    goto :goto_1b

    .line 118
    :catchall_15
    move-exception p0

    .line 119
    const-string v0, "xems_local"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_1b
    return-void
.end method

.method private static deletedPrograms()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 187
    if-nez v1, :cond_c

    .line 188
    return-object v0

    .line 190
    :cond_c
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "deleted_program_ids"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_38

    aget-object v4, v1, v3

    .line 191
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_35

    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 195
    :cond_38
    return-object v0
.end method

.method static displayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 379
    if-eqz p0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 380
    :goto_10
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    move-object p0, v0

    :cond_19
    return-object p0
.end method

.method private static dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 998
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 999
    if-eqz p0, :cond_7

    goto :goto_c

    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    return-object p0
.end method

.method private static ensureDeviceRecord(Ljava/lang/String;)V
    .registers 5

    .line 810
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 811
    return-void

    .line 813
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 814
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v1, :cond_16

    .line 815
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 817
    :cond_16
    new-instance v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    .line 818
    iput-object p0, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    .line 819
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 820
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    .line 821
    iget-object p0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveDevices()V

    .line 823
    return-void
.end method

.method private static ensureSampleUser(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const-wide/16 v3, -0x1

    if-ge v1, v2, :cond_1c

    .line 246
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 247
    if-eqz v2, :cond_19

    iget-wide v5, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_19

    .line 248
    return-void

    .line 245
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 251
    :cond_1c
    new-instance v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 252
    iput-wide v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 253
    const-string v2, "\u041f\u0440\u0438\u043c\u0435\u0440\u0435\u043d \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Sample client"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 254
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 255
    sget-object v2, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 256
    const/16 v2, 0xaf

    iput v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 257
    const/high16 v2, 0x42960000    # 75.0f

    iput v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 259
    const/16 v3, -0x23

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 260
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 261
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 262
    const-string v2, "\u0426\u0435\u043b: \u0422\u043e\u043d\u0443\u0441 \u00b7 \u0424\u043e\u0440\u043c\u0430: \u0421\u0440\u0435\u0434\u0435\u043d"

    const-string v3, "Goal: Tone \u00b7 Fitness: Intermediate"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;

    .line 263
    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method public static exportBackup(Landroid/app/Activity;Landroid/net/Uri;)Z
    .registers 8

    .line 645
    const/4 v0, 0x0

    if-eqz p0, :cond_b6

    if-nez p1, :cond_7

    goto/16 :goto_b6

    .line 649
    :cond_7
    const/4 v1, 0x1

    :try_start_8
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 650
    const-string v3, "version"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    const-string v3, "exportedAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    const-string v3, "users"

    const-string v4, "file_name_user_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    const-string v3, "programs"

    const-string v4, "file_name_train_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    const-string v3, "devices"

    const-string v4, "file_name_device_data"

    const-class v5, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    const-string v3, "records"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    const-string v3, "pairedMacs"

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 659
    if-nez p1, :cond_7f

    .line 660
    return v0

    .line 662
    :cond_7f
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 663
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 664
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 665
    const-string p1, "\u0414\u0430\u043d\u043d\u0438\u0442\u0435 \u0441\u0430 \u0435\u043a\u0441\u043f\u043e\u0440\u0442\u0438\u0440\u0430\u043d\u0438"

    const-string v2, "Data exported"

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_9d
    .catchall {:try_start_8 .. :try_end_9d} :catchall_9e

    .line 666
    return v1

    .line 667
    :catchall_9e
    move-exception p1

    .line 668
    const-string v2, "xems_local"

    const-string v3, "exportBackup"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    const-string p1, "\u0415\u043a\u0441\u043f\u043e\u0440\u0442\u044a\u0442 \u043d\u0435 \u0443\u0441\u043f\u044f"

    const-string v2, "Export failed"

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 670
    return v0

    .line 646
    :cond_b6
    :goto_b6
    return v0
.end method

.method public static filterDevices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/DeviceBean;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static finishSetup()V
    .registers 0

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->finishSetup()V

    .line 85
    return-void
.end method

.method public static finishUserDialog(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .registers 3

    .line 587
    if-nez p0, :cond_3

    .line 588
    return-void

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_10

    instance-of v1, p0, Lcom/isaigu/gymapp/BaseDialogFragment;

    if-eqz v1, :cond_10

    .line 592
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 594
    :cond_10
    return-void
.end method

.method static getAppContext()Landroid/content/Context;
    .registers 5

    .line 785
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 786
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 787
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    return-object v1

    .line 788
    :catchall_19
    move-exception v1

    .line 789
    return-object v0
.end method

.method private static getPairedMacs(Landroid/content/Context;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 826
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 827
    if-nez p0, :cond_8

    .line 828
    return-object v0

    .line 830
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "paired_macs"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 831
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 832
    return-object v0

    .line 834
    :cond_1b
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 835
    const/4 v1, 0x0

    :goto_22
    array-length v2, p0

    if-ge v1, v2, :cond_37

    .line 836
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_34

    .line 838
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 841
    :cond_37
    return-object v0
.end method

.method public static importBackup(Landroid/app/Activity;Landroid/net/Uri;)Z
    .registers 11

    .line 676
    const-string v0, "pairedMacs"

    const-string v1, "records"

    const/4 v2, 0x0

    if-eqz p0, :cond_126

    if-nez p1, :cond_b

    goto/16 :goto_126

    .line 679
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_22

    .line 680
    const-string p1, "\u0418\u043c\u043f\u043e\u0440\u0442 \u0438\u043c\u0430 \u0441\u0430\u043c\u043e \u043f\u0440\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v0, "Import is only available in the tablet setup"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 681
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 682
    return v2

    .line 685
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 686
    if-nez p1, :cond_2d

    .line 687
    return v2

    .line 689
    :cond_2d
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    :goto_3e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 693
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 695
    :cond_4d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 696
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 697
    if-nez p1, :cond_5b

    .line 698
    return v2

    .line 700
    :cond_5b
    const-string v3, "users"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    const-class v5, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 701
    const-string v5, "programs"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 702
    const-string v6, "devices"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    const-class v7, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 703
    if-eqz v3, :cond_8e

    .line 704
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v7

    iput-object v3, v7, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 705
    const-string v7, "file_name_user_data"

    const-class v8, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v7, v8, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 707
    :cond_8e
    if-eqz v5, :cond_a0

    .line 708
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iput-object v5, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 709
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 710
    const-string v3, "file_name_train_data"

    const-class v7, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v7, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 712
    :cond_a0
    if-eqz v6, :cond_af

    .line 713
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iput-object v6, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 714
    const-string v3, "file_name_device_data"

    const-class v5, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v3, v5, v6}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 716
    :cond_af
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 717
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->replaceRecords(Lcom/alibaba/fastjson/JSONArray;)V

    .line 719
    :cond_bc
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 720
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 721
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 722
    if-eqz p1, :cond_ee

    .line 723
    const/4 v0, 0x0

    :goto_d8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_ee

    .line 724
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_d8

    .line 727
    :cond_ee
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 730
    :cond_f1
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->bumpCounters(Landroid/content/Context;)V

    .line 731
    const/16 p1, 0x69

    invoke-static {p1}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 732
    const/16 p1, 0x6a

    invoke-static {p1}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 733
    const-string p1, "\u0414\u0430\u043d\u043d\u0438\u0442\u0435 \u0441\u0430 \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u0430\u043d\u0438"

    const-string v0, "Data imported"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_10d
    .catchall {:try_start_22 .. :try_end_10d} :catchall_10e

    .line 734
    return v4

    .line 735
    :catchall_10e
    move-exception p1

    .line 736
    const-string v0, "xems_local"

    const-string v1, "importBackup"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    const-string p1, "\u0418\u043c\u043f\u043e\u0440\u0442\u044a\u0442 \u043d\u0435 \u0443\u0441\u043f\u044f"

    const-string v0, "Import failed"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 738
    return v2

    .line 677
    :cond_126
    :goto_126
    return v2
.end method

.method public static isAdminSession()Z
    .registers 1

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_9

    .line 73
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 75
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->isSetupMode()Z

    move-result v0

    return v0
.end method

.method public static isAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 324
    return v1

    .line 326
    :cond_8
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_18

    .line 328
    return v0

    .line 330
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 331
    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 332
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 333
    return v0

    .line 336
    :cond_37
    return v1
.end method

.method public static isEmsDevice(Ljava/lang/Object;[B)Z
    .registers 6

    .line 361
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "address"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 363
    if-nez p0, :cond_16

    const-string p0, ""

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 364
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 365
    const-string v3, "EMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string v3, "NBEE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    if-eqz p1, :cond_33

    array-length p1, p1

    if-gtz p1, :cond_48

    :cond_33
    if-eqz v1, :cond_46

    .line 367
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object p1

    if-nez p1, :cond_48

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_48

    :cond_46
    const/4 p1, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    const/4 p1, 0x1

    .line 368
    :goto_49
    if-eqz p1, :cond_5c

    if-eqz v1, :cond_5c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5c

    .line 369
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5d

    .line 371
    :cond_5c
    return p1

    .line 372
    :catchall_5d
    move-exception p0

    .line 373
    return v0
.end method

.method public static isUserSession()Z
    .registers 1

    .line 79
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;
    .registers 5

    .line 798
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 799
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 800
    const/4 v1, 0x0

    :goto_b
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 801
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 802
    if-eqz v2, :cond_28

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 803
    return-object v2

    .line 800
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 806
    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadDevices(Landroid/content/Context;)V
    .registers 3

    .line 282
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object p0

    .line 283
    const-class v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    const-string v1, "file_name_device_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 284
    if-nez v0, :cond_13

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    :cond_13
    iput-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 288
    return-void
.end method

.method public static loadPrograms()V
    .registers 4

    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 268
    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-string v2, "file_name_train_data"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 269
    if-nez v1, :cond_13

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 273
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->repairSeededProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 275
    :cond_26
    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 276
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->seedDefaultProgramIfNeeded()V

    .line 277
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 279
    return-void
.end method

.method private static loadProtocol()V
    .registers 2

    .line 291
    const-class v0, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    const-string v1, "file_name_register_protocol_data"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 292
    if-eqz v0, :cond_12

    .line 293
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 295
    :cond_12
    return-void
.end method

.method public static loadUsers()V
    .registers 8

    .line 217
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 218
    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v2, "file_name_user_data"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 219
    if-nez v1, :cond_13

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    :cond_13
    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v3, "file_name_offline_user_data"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_30

    .line 225
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v2, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 228
    :cond_30
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->ensureSampleUser(Ljava/util/List;)V

    .line 229
    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 231
    const/4 v0, 0x0

    :goto_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_55

    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 233
    if-eqz v2, :cond_52

    iget-wide v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_52

    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 231
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 237
    :cond_55
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 238
    return-void
.end method

.method static macKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 861
    if-nez p0, :cond_5

    .line 862
    const-string p0, ""

    return-object p0

    .line 864
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 866
    nop

    .line 867
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 868
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 869
    const/16 v4, 0x30

    if-lt v3, v4, :cond_27

    const/16 v4, 0x39

    if-le v3, v4, :cond_2f

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3f

    const/16 v4, 0x46

    if-gt v3, v4, :cond_3f

    .line 870
    :cond_2f
    if-lez v2, :cond_3a

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_3a

    .line 871
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 873
    :cond_3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    add-int/lit8 v2, v2, 0x1

    .line 867
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 877
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static mergeCloudPrograms(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 154
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_f

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 157
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->deletedPrograms()Ljava/util/Set;

    move-result-object v1

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b

    .line 160
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 161
    instance-of v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    if-nez v6, :cond_29

    .line 162
    goto :goto_68

    .line 164
    :cond_29
    check-cast v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 165
    iget-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v6, :cond_68

    iget-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 166
    goto :goto_68

    .line 168
    :cond_3c
    nop

    .line 169
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3f
    iget-object v8, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_63

    if-nez v7, :cond_63

    .line 170
    iget-object v7, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 171
    if-eqz v7, :cond_5f

    iget-object v8, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v8, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    const/4 v7, 0x1

    goto :goto_60

    :cond_5f
    const/4 v7, 0x0

    .line 169
    :goto_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 173
    :cond_63
    if-nez v7, :cond_68

    .line 174
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_68
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 177
    :cond_6b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7c

    .line 178
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 179
    iget-object p0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 182
    :cond_7c
    return-void
.end method

.method static mergeCloudUsers(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 126
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v1, :cond_f

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 129
    :cond_f
    nop

    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_55

    .line 131
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 132
    instance-of v5, v4, Lcom/isaigu/gymapp/bean/TrainUser;

    const/4 v6, 0x1

    if-nez v5, :cond_23

    .line 133
    goto :goto_52

    .line 135
    :cond_23
    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 136
    nop

    .line 137
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_28
    iget-object v8, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4a

    if-nez v7, :cond_4a

    .line 138
    iget-object v7, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 139
    if-eqz v7, :cond_46

    iget-wide v7, v7, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v9, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_46

    const/4 v7, 0x1

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    .line 137
    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 141
    :cond_4a
    if-nez v7, :cond_52

    .line 142
    iget-object v3, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v3, 0x1

    .line 130
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 146
    :cond_55
    if-eqz v3, :cond_5a

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 149
    :cond_5a
    return-void
.end method

.method private static migrateOnce(Landroid/content/Context;)V
    .registers 7

    .line 302
    if-eqz p0, :cond_64

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "migrated_v1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_64

    .line 305
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 306
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 307
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 308
    nop

    :goto_2c
    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_50

    .line 309
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 310
    if-eqz v4, :cond_4d

    iget-object v5, v4, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 311
    iget-object v4, v4, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 314
    :cond_50
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 316
    :cond_53
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    return-void

    .line 303
    :cond_64
    :goto_64
    return-void
.end method

.method private static nextDeviceId()J
    .registers 12

    .line 915
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 916
    const-string v1, "next_device_id"

    const-wide/16 v2, 0x1

    if-nez v0, :cond_c

    move-wide v4, v2

    goto :goto_14

    :cond_c
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 917
    :goto_14
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 918
    const/4 v7, 0x0

    :goto_1b
    if-eqz v6, :cond_43

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_43

    .line 919
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 920
    if-eqz v8, :cond_40

    iget-object v9, v8, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    if-eqz v9, :cond_40

    iget-object v9, v8, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-ltz v11, :cond_40

    .line 921
    iget-object v4, v8, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 918
    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 924
    :cond_43
    if-eqz v0, :cond_55

    .line 925
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 927
    :cond_55
    return-wide v4
.end method

.method private static nextProgramId()J
    .registers 12

    .line 899
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 900
    const-string v1, "next_program_id"

    const-wide/16 v2, 0x1

    if-nez v0, :cond_c

    move-wide v4, v2

    goto :goto_14

    :cond_c
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 901
    :goto_14
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 902
    const/4 v7, 0x0

    :goto_1b
    if-eqz v6, :cond_43

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_43

    .line 903
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 904
    if-eqz v8, :cond_40

    iget-object v9, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v9, :cond_40

    iget-object v9, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-ltz v11, :cond_40

    .line 905
    iget-object v4, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 902
    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 908
    :cond_43
    if-eqz v0, :cond_55

    .line 909
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 911
    :cond_55
    return-wide v4
.end method

.method private static nextUserId()J
    .registers 12

    .line 882
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 883
    const-wide/32 v1, 0x186a0

    const-string v3, "next_user_id"

    if-nez v0, :cond_c

    goto :goto_14

    :cond_c
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 884
    :goto_14
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 885
    const/4 v5, 0x0

    :goto_1b
    const-wide/16 v6, 0x1

    if-eqz v4, :cond_3b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_3b

    .line 886
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 887
    if-eqz v8, :cond_38

    iget-wide v9, v8, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    neg-long v9, v9

    cmp-long v11, v9, v1

    if-ltz v11, :cond_38

    .line 888
    iget-wide v1, v8, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    neg-long v1, v1

    add-long/2addr v1, v6

    .line 885
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 891
    :cond_3b
    if-eqz v0, :cond_4d

    .line 892
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-long/2addr v6, v1

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 894
    :cond_4d
    neg-long v0, v1

    return-wide v0
.end method

.method public static onDeviceConnected(Ljava/lang/String;)V
    .registers 4

    .line 520
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_31

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_31

    .line 524
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 525
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 526
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 527
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_2c

    .line 529
    :cond_25
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 530
    return-void

    .line 529
    :cond_2c
    :goto_2c
    nop

    .line 532
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->ensureDeviceRecord(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_32

    .line 535
    goto :goto_3a

    .line 522
    :cond_31
    :goto_31
    return-void

    .line 533
    :catchall_32
    move-exception p0

    .line 534
    const-string v0, "xems_local"

    const-string v1, "onDeviceConnected"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    :goto_3a
    return-void
.end method

.method public static onDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 397
    if-eqz p0, :cond_34

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_34

    .line 400
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 401
    return-void

    .line 403
    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2b

    .line 411
    goto :goto_33

    .line 409
    :catchall_2b
    move-exception p0

    .line 410
    const-string p1, "xems_local"

    const-string p2, "onDiscovered"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    :goto_33
    return-void

    .line 398
    :cond_34
    :goto_34
    return-void
.end method

.method public static onScanLost(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 416
    if-eqz p0, :cond_14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    .line 419
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$2;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore$2;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void

    .line 417
    :cond_14
    :goto_14
    return-void
.end method

.method public static pairedCount(Landroid/content/Context;)I
    .registers 1

    .line 539
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method static parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSONArray;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1003
    if-nez p0, :cond_4

    .line 1004
    const/4 p0, 0x0

    return-object p0

    .line 1006
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 794
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "xems_local_store"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 385
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 990
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 991
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_b

    .line 992
    check-cast p0, Ljava/util/List;

    return-object p0

    .line 994
    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static rememberDeletedProgram(J)V
    .registers 5

    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    if-nez v0, :cond_7

    .line 201
    return-void

    .line 203
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->deletedPrograms()Ljava/util/Set;

    move-result-object v1

    .line 204
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_35

    .line 208
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    :cond_35
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    goto :goto_1e

    .line 212
    :cond_39
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "deleted_program_ids"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    :cond_4e
    return-void
.end method

.method private static removeFromAdapterList(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .line 430
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 432
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 433
    if-nez v0, :cond_17

    .line 434
    return-void

    .line 436
    :cond_17
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 437
    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_75

    .line 438
    :try_start_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_21
    if-ltz v2, :cond_5e

    .line 439
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 440
    if-eqz v3, :cond_5b

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 441
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_72

    .line 444
    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v3, "selects"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 446
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 447
    if-eqz p1, :cond_58

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_58

    .line 448
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3a .. :try_end_58} :catch_59
    .catchall {:try_start_3a .. :try_end_58} :catchall_72

    .line 452
    :cond_58
    goto :goto_5e

    .line 450
    :catch_59
    move-exception p1

    .line 453
    goto :goto_5e

    .line 438
    :cond_5b
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 456
    :cond_5e
    :goto_5e
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_72

    .line 457
    :try_start_5f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "notifyDataSetChanged"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_5f .. :try_end_71} :catchall_75

    .line 460
    goto :goto_7d

    .line 456
    :catchall_72
    move-exception p0

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 458
    :catchall_75
    move-exception p0

    .line 459
    const-string p1, "xems_local"

    const-string v0, "onScanLost"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    :goto_7d
    return-void
.end method

.method static removeProgram(J)V
    .registers 7

    .line 628
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->rememberDeletedProgram(J)V

    .line 629
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 630
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_c

    .line 631
    return-void

    .line 633
    :cond_c
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_36

    .line 634
    iget-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 635
    if-eqz v2, :cond_33

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v3, :cond_33

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p0

    if-nez v4, :cond_33

    .line 636
    iget-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 633
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 639
    :cond_36
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 640
    return-void
.end method

.method private static repairSeededProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 4

    .line 765
    const/4 v0, 0x0

    if-eqz p0, :cond_61

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 766
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    const-string v2, "Workout 1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_61

    .line 769
    :cond_20
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_60

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    const/16 v2, 0x55

    if-ne v1, v2, :cond_60

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_60

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-ne v1, v2, :cond_60

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_46

    goto :goto_60

    .line 774
    :cond_46
    invoke-static {}, Lcom/isaigu/gymapp/bean/TrainProgram;->getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 775
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 776
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 777
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 778
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 779
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 780
    const/4 p0, 0x1

    return p0

    .line 772
    :cond_60
    :goto_60
    return v0

    .line 767
    :cond_61
    :goto_61
    return v0
.end method

.method private static repairUsers(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .line 946
    if-nez p0, :cond_3

    .line 947
    return-void

    .line 949
    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 950
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 951
    if-nez v1, :cond_13

    .line 952
    goto :goto_3b

    .line 954
    :cond_13
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2b

    .line 955
    :cond_1f
    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    .line 957
    :cond_2b
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-nez v2, :cond_33

    .line 958
    const-string v2, ""

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 960
    :cond_33
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-nez v2, :cond_3b

    .line 961
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 949
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 964
    :cond_3e
    return-void
.end method

.method private static saveDevices()V
    .registers 3

    .line 982
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 983
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 984
    const-class v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    const-string v2, "file_name_device_data"

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 986
    :cond_11
    return-void
.end method

.method private static savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 845
    if-nez p0, :cond_3

    .line 846
    return-void

    .line 848
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 850
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 851
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 852
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 854
    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 856
    :cond_27
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paired_macs"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 857
    return-void
.end method

.method public static saveProgram(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V
    .registers 5

    .line 599
    if-eqz p0, :cond_3a

    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3a

    .line 603
    :cond_d
    :try_start_d
    iput-object p3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 604
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 605
    const/16 p2, 0x6a

    invoke-static {p2}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 606
    const-string p2, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0430 \u043b\u043e\u043a\u0430\u043b\u043d\u043e"

    const-string p3, "Program saved locally"

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_26

    .line 611
    goto :goto_39

    .line 608
    :catchall_26
    move-exception p1

    .line 609
    const-string p2, "xems_local"

    const-string p3, "saveProgram"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    const-string p1, "\u0413\u0440\u0435\u0448\u043a\u0430 \u043f\u0440\u0438 \u0437\u0430\u043f\u0430\u0437\u0432\u0430\u043d\u0435"

    const-string p2, "Save failed"

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 612
    :goto_39
    return-void

    .line 600
    :cond_3a
    :goto_3a
    return-void
.end method

.method static savePrograms()V
    .registers 3

    .line 975
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 976
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 977
    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    const-string v2, "file_name_train_data"

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 979
    :cond_11
    return-void
.end method

.method public static saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V
    .registers 6

    .line 567
    if-eqz p0, :cond_40

    if-nez p1, :cond_5

    goto :goto_40

    .line 570
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 571
    if-nez p2, :cond_29

    .line 572
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 573
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 574
    iget-object p2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez p2, :cond_23

    .line 575
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 577
    :cond_23
    iget-object p2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 579
    :cond_29
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 581
    :goto_2c
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 582
    const/16 p1, 0x69

    invoke-static {p1}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 583
    const-string p1, "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u044f\u0442 \u0435 \u0437\u0430\u043f\u0430\u0437\u0435\u043d \u043b\u043e\u043a\u0430\u043b\u043d\u043e"

    const-string p2, "User saved locally"

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 584
    return-void

    .line 568
    :cond_40
    :goto_40
    return-void
.end method

.method private static saveUsers()V
    .registers 3

    .line 967
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->repairUsers(Ljava/util/List;)V

    .line 968
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 969
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 970
    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    const-string v2, "file_name_user_data"

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 972
    :cond_1a
    return-void
.end method

.method private static seedDefaultProgramIfNeeded()V
    .registers 4

    .line 749
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 750
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 751
    return-void

    .line 753
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/bean/TrainProgram;->getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 754
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 755
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    const-string v3, "Workout 1"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 756
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 757
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method private static showDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 465
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 466
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 467
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 468
    if-nez v0, :cond_17

    .line 469
    return-void

    .line 471
    :cond_17
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_cb

    .line 473
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    :try_start_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3d

    .line 474
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 475
    if-eqz v5, :cond_3a

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 476
    monitor-exit v0

    return-void

    .line 473
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 479
    :cond_3d
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v2

    .line 480
    if-nez v2, :cond_5b

    .line 481
    new-instance v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    .line 482
    iput-object p1, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    .line 483
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 484
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    goto :goto_6f

    .line 485
    :cond_5b
    iget-object v4, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    if-eqz v4, :cond_69

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 486
    :cond_69
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 488
    :cond_6f
    :goto_6f
    iput-object p2, v2, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    .line 489
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catchall {:try_start_1e .. :try_end_74} :catchall_c8

    .line 493
    :try_start_74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "selects"

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 494
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 495
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 496
    if-eqz p2, :cond_99

    .line 497
    :goto_89
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_99

    .line 498
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_98
    .catch Ljava/lang/NoSuchFieldException; {:try_start_74 .. :try_end_98} :catch_9a
    .catchall {:try_start_74 .. :try_end_98} :catchall_c8

    goto :goto_89

    .line 503
    :cond_99
    goto :goto_9b

    .line 501
    :catch_9a
    move-exception p2

    .line 504
    :goto_9b
    :try_start_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_c8

    .line 505
    :try_start_9c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "notifyDataSetChanged"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "start_mac_address_timer"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 507
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 508
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catchall {:try_start_9c .. :try_end_c7} :catchall_cb

    .line 511
    goto :goto_d3

    .line 504
    :catchall_c8
    move-exception p0

    :try_start_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw p0
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cb

    .line 509
    :catchall_cb
    move-exception p0

    .line 510
    const-string p1, "xems_local"

    const-string p2, "showDiscovered"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    :goto_d3
    return-void
.end method

.method static storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 7

    .line 616
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 617
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_f

    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 620
    :cond_f
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_29

    .line 621
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 623
    :cond_29
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 624
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 625
    return-void
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1010
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p1

    :goto_8
    return-object p0
.end method
