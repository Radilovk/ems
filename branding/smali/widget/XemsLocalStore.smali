.class public final Lcom/isaigu/gymapp/widget/XemsLocalStore;
.super Ljava/lang/Object;
.source "XemsLocalStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalStore$DossierSink;
    }
.end annotation


# static fields
.field static final DEMO_NAME:Ljava/lang/String; = "Demo"

.field static final DEMO_PROGRAM:Ljava/lang/String; = "Test"

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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 390
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    .line 393
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->showDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->removeFromAdapterList(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static autoSelectFirstProgram(Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 587
    if-nez p0, :cond_3

    .line 604
    :cond_2
    :goto_2
    return-void

    .line 590
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 591
    const-string v0, "programDatas"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 592
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 593
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 594
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 597
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 598
    const-string v2, "updateSelectedProgram"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 599
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 600
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_41} :catch_42

    goto :goto_2

    .line 601
    :catch_42
    move-exception v0

    .line 602
    const-string v1, "xems_local"

    const-string v2, "autoSelectFirstProgram"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static bootstrapOnline(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .registers 4

    .prologue
    .line 92
    if-eqz p0, :cond_49

    :try_start_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 93
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 94
    :goto_c
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
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$DossierSink;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore$DossierSink;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsDossier;->init(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsDossier$Sink;)V

    .line 100
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->changed()V

    .line 101
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->start(Landroid/content/Context;)V

    .line 102
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 103
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 104
    if-eqz p0, :cond_48

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 107
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->requestCloudSync()V

    .line 108
    const-string v0, "initUsers"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->callPrivate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-string v0, "initTrainPrograms"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->callPrivate(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    :cond_48
    :goto_48
    return-void

    .line 93
    :cond_49
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4c} :catch_4e

    move-result-object v0

    goto :goto_c

    .line 111
    :catch_4e
    move-exception v0

    .line 112
    const-string v1, "xems_local"

    const-string v2, "bootstrapOnline"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48
.end method

.method private static bumpCounters(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1030
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_user_id"

    .line 1031
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_program_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_device_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1032
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1034
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    .line 1035
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    .line 1036
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    .line 1037
    return-void
.end method

.method private static callPrivate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 120
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    .line 124
    :goto_15
    return-void

    .line 121
    :catch_16
    move-exception v0

    .line 122
    const-string v1, "xems_local"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private static deletedPrograms()Ljava/util/Set;
    .registers 6
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
    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 190
    if-nez v1, :cond_c

    .line 198
    :cond_b
    return-object v0

    .line 193
    :cond_c
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

    :goto_20
    if-ge v1, v3, :cond_b

    aget-object v4, v2, v1

    .line 194
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_35

    .line 195
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method private static demoProfile(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 5

    .prologue
    .line 289
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 290
    if-nez v0, :cond_7

    .line 306
    :cond_6
    :goto_6
    return-void

    .line 293
    :cond_7
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    iget-wide v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tone|mid|"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "abs,glutes"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cond"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desk,stress"

    .line 299
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tone"

    const-string v3, "mid"

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->summaryOf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "abs,glutes"

    const-string v2, "desk,stress"

    const-string v3, ""

    .line 302
    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->extras(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_ac} :catch_ae

    goto/16 :goto_6

    .line 303
    :catch_ae
    move-exception v0

    .line 304
    const-string v1, "xems_local"

    const-string v2, "demo profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method

.method static displayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 422
    if-eqz p0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    :goto_e
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    move-object p0, v0

    :cond_17
    return-object p0

    .line 422
    :cond_18
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
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
    .line 1126
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6
.end method

.method private static ensureDeviceRecord(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 908
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 921
    :goto_6
    return-void

    .line 911
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 912
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v1, :cond_16

    .line 913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 915
    :cond_16
    new-instance v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    .line 916
    iput-object p0, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    .line 917
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 918
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    .line 919
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveDevices()V

    goto :goto_6
.end method

.method private static ensureSampleUser(Ljava/util/List;)V
    .registers 9
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

    .line 255
    const/4 v3, 0x0

    move v1, v2

    .line 256
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_95

    .line 257
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 258
    if-eqz v0, :cond_90

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_90

    .line 263
    :goto_19
    if-nez v0, :cond_48

    .line 264
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 265
    iput-wide v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 266
    sget-object v1, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 267
    const/16 v1, 0xa8

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 268
    const/high16 v1, 0x42800000    # 64.0f

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 270
    const/4 v3, 0x1

    const/16 v4, -0x26

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 271
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 272
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 273
    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 275
    :cond_48
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v1, :cond_60

    const-string v1, "\u041f\u0440\u0438\u043c\u0435\u0440\u0435\u043d \u043a\u043b\u0438\u0435\u043d\u0442"

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "Sample client"

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 276
    :cond_60
    const-string v1, "Demo"

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 277
    const-string v1, "Demo"

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 279
    :cond_68
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    if-eqz v1, :cond_88

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_88

    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    const-string v1, "Workout 1"

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 281
    :cond_88
    const-string v1, "Test"

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    .line 283
    :cond_8c
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->demoProfile(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 284
    return-void

    .line 256
    :cond_90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    :cond_95
    move-object v0, v3

    goto :goto_19
.end method

.method public static exportBackup(Landroid/app/Activity;Landroid/net/Uri;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 705
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 730
    :cond_6
    :goto_6
    return v0

    .line 709
    :cond_7
    :try_start_7
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 710
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    const-string v3, "exportedAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    const-string v3, "users"

    const-string v4, "file_name_user_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    const-string v3, "programs"

    const-string v4, "file_name_train_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    const-string v3, "devices"

    const-string v4, "file_name_device_data"

    const-class v5, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    const-string v3, "records"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    const-string v3, "pairedMacs"

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 719
    if-eqz v3, :cond_6

    .line 722
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 723
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 724
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 725
    const-string v2, "\u0414\u0430\u043d\u043d\u0438\u0442\u0435 \u0441\u0430 \u0435\u043a\u0441\u043f\u043e\u0440\u0442\u0438\u0440\u0430\u043d\u0438"

    const-string v3, "Data exported"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_9d} :catch_a0

    move v0, v1

    .line 726
    goto/16 :goto_6

    .line 727
    :catch_a0
    move-exception v2

    .line 728
    const-string v3, "xems_local"

    const-string v4, "exportBackup"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    const-string v2, "\u0415\u043a\u0441\u043f\u043e\u0440\u0442\u044a\u0442 \u043d\u0435 \u0443\u0441\u043f\u044f"

    const-string v3, "Export failed"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6
.end method

.method public static filterDevices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 3
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
    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static finishSetup()V
    .registers 0

    .prologue
    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->finishSetup()V

    .line 85
    return-void
.end method

.method public static finishUserDialog(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .registers 3

    .prologue
    .line 647
    if-nez p0, :cond_3

    .line 654
    :cond_2
    :goto_2
    return-void

    .line 650
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_2

    instance-of v1, p0, Lcom/isaigu/gymapp/BaseDialogFragment;

    if-eqz v1, :cond_2

    .line 652
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    goto :goto_2
.end method

.method static getAppContext()Landroid/content/Context;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 883
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 884
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 885
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 887
    :goto_1a
    return-object v0

    .line 886
    :catch_1b
    move-exception v0

    move-object v0, v1

    .line 887
    goto :goto_1a
.end method

.method private static getPairedMacs(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
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
    .line 924
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 925
    if-nez p0, :cond_9

    move-object v0, v1

    .line 939
    :goto_8
    return-object v0

    .line 928
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "paired_macs"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v0, v1

    .line 930
    goto :goto_8

    .line 932
    :cond_1d
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 933
    const/4 v0, 0x0

    :goto_24
    array-length v3, v2

    if-ge v0, v3, :cond_39

    .line 934
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 935
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_36

    .line 936
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_39
    move-object v0, v1

    .line 939
    goto :goto_8
.end method

.method public static importBackup(Landroid/app/Activity;Landroid/net/Uri;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 736
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v1

    .line 798
    :goto_7
    return v0

    .line 739
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 740
    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442 \u0438\u043c\u0430 \u0441\u0430\u043c\u043e \u043f\u0440\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v3, "Import is only available in the tablet setup"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 742
    goto :goto_7

    .line 745
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 746
    if-nez v0, :cond_2b

    move v0, v1

    .line 747
    goto :goto_7

    .line 749
    :cond_2b
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    :goto_3c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 753
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_4b} :catch_4c

    goto :goto_3c

    .line 795
    :catch_4c
    move-exception v0

    .line 796
    const-string v3, "xems_local"

    const-string v4, "importBackup"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442\u044a\u0442 \u043d\u0435 \u0443\u0441\u043f\u044f"

    const-string v3, "Import failed"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 798
    goto :goto_7

    .line 755
    :cond_65
    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 756
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 757
    if-nez v0, :cond_74

    move v0, v1

    .line 758
    goto :goto_7

    .line 760
    :cond_74
    const-string v3, "users"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    const-class v4, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 761
    const-string v4, "programs"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 762
    const-string v5, "devices"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    const-class v6, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 763
    if-eqz v3, :cond_a7

    .line 764
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iput-object v3, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 765
    const-string v6, "file_name_user_data"

    const-class v7, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v6, v7, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 767
    :cond_a7
    if-eqz v4, :cond_b9

    .line 768
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iput-object v4, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 769
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 770
    const-string v3, "file_name_train_data"

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v6, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 772
    :cond_b9
    if-eqz v5, :cond_c8

    .line 773
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iput-object v5, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 774
    const-string v3, "file_name_device_data"

    const-class v4, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 776
    :cond_c8
    const-string v3, "records"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 777
    const-string v3, "records"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->replaceRecords(Lcom/alibaba/fastjson/JSONArray;)V

    .line 779
    :cond_d9
    const-string v3, "pairedMacs"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 780
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 781
    const-string v3, "pairedMacs"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 782
    if-eqz v5, :cond_110

    move v3, v1

    .line 783
    :goto_f9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_110

    .line 784
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 783
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f9

    .line 787
    :cond_110
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 790
    :cond_113
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->bumpCounters(Landroid/content/Context;)V

    .line 791
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 792
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 793
    const-string v0, "\u0414\u0430\u043d\u043d\u0438\u0442\u0435 \u0441\u0430 \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u0430\u043d\u0438"

    const-string v3, "Data imported"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_130
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_130} :catch_4c

    move v0, v2

    .line 794
    goto/16 :goto_7
.end method

.method public static isAdminSession()Z
    .registers 1

    .prologue
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
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 379
    :goto_9
    return v0

    .line 369
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    .line 371
    goto :goto_9

    .line 373
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 374
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 375
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    .line 376
    goto :goto_9

    :cond_3a
    move v0, v1

    .line 379
    goto :goto_9
.end method

.method public static isEmsDevice(Ljava/lang/Object;[B)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 404
    :try_start_1
    const-string v0, "address"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    if-nez v1, :cond_57

    const-string v1, ""

    move-object v3, v1

    .line 407
    :goto_16
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string v4, "EMS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    const-string v4, "NBEE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    if-eqz p1, :cond_2f

    array-length v1, p1

    if-gtz v1, :cond_41

    :cond_2f
    if-eqz v0, :cond_5d

    .line 410
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v1

    if-nez v1, :cond_41

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_41
    move v1, v2

    .line 411
    :goto_42
    if-eqz v1, :cond_55

    if-eqz v0, :cond_55

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_55

    .line 412
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    move v0, v1

    .line 416
    :goto_56
    return v0

    .line 406
    :cond_57
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5a} :catch_5f

    move-result-object v1

    move-object v3, v1

    goto :goto_16

    .line 410
    :cond_5d
    const/4 v1, 0x0

    goto :goto_42

    .line 415
    :catch_5f
    move-exception v0

    move v0, v2

    .line 416
    goto :goto_56
.end method

.method public static isUserSession()Z
    .registers 1

    .prologue
    .line 79
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;
    .registers 6

    .prologue
    .line 896
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 897
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 898
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 899
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 900
    if-eqz v0, :cond_29

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 904
    :goto_28
    return-object v0

    .line 898
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 904
    :cond_2d
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static loadDevices(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 325
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    .line 326
    const-string v0, "file_name_device_data"

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 327
    if-nez v0, :cond_13

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    :cond_13
    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 331
    return-void
.end method

.method public static loadPrograms()V
    .registers 4

    .prologue
    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    .line 310
    const-string v0, "file_name_train_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 311
    if-nez v0, :cond_3a

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 314
    :goto_14
    const/4 v0, 0x0

    move v2, v0

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_29

    .line 315
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->repairSeededProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    .line 314
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    .line 317
    :cond_29
    iput-object v1, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 318
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->renameSeededProgram(Lcom/isaigu/gymapp/mgr/DataMgr;)V

    .line 319
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->seedDefaultProgramIfNeeded()V

    .line 320
    iget-object v0, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 321
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 322
    return-void

    :cond_3a
    move-object v1, v0

    goto :goto_14
.end method

.method private static loadProtocol()V
    .registers 2

    .prologue
    .line 334
    const-string v0, "file_name_register_protocol_data"

    const-class v1, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 335
    if-eqz v0, :cond_12

    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 338
    :cond_12
    return-void
.end method

.method public static loadUsers()V
    .registers 8

    .prologue
    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    .line 221
    const-string v0, "file_name_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 222
    if-nez v0, :cond_5e

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 226
    :goto_14
    const-string v0, "file_name_offline_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 228
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    const-string v0, "file_name_offline_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 231
    :cond_33
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->ensureSampleUser(Ljava/util/List;)V

    .line 232
    iput-object v1, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 234
    const/4 v0, 0x0

    move v2, v0

    :goto_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5a

    .line 235
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 236
    if-eqz v0, :cond_56

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_56

    .line 237
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 234
    :cond_56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3a

    .line 240
    :cond_5a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 241
    return-void

    :cond_5e
    move-object v1, v0

    goto :goto_14
.end method

.method static macKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 959
    if-nez p0, :cond_6

    .line 960
    const-string v0, ""

    .line 975
    :goto_5
    return-object v0

    .line 962
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 965
    :goto_15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 966
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 967
    const/16 v5, 0x30

    if-lt v1, v5, :cond_27

    const/16 v5, 0x39

    if-le v1, v5, :cond_2f

    :cond_27
    const/16 v5, 0x41

    if-lt v1, v5, :cond_49

    const/16 v5, 0x46

    if-gt v1, v5, :cond_49

    .line 968
    :cond_2f
    if-lez v2, :cond_3a

    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_3a

    .line 969
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 971
    :cond_3a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 972
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 965
    :goto_40
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_15

    .line 975
    :cond_44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_49
    move v1, v2

    goto :goto_40
.end method

.method static mergeCloudPrograms(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    .line 157
    iget-object v0, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v0, :cond_10

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 160
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->deletedPrograms()Ljava/util/Set;

    move-result-object v7

    .line 161
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 162
    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6b

    .line 163
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    instance-of v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    if-nez v1, :cond_2c

    .line 162
    :cond_28
    :goto_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a

    .line 167
    :cond_2c
    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 168
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    move v4, v3

    move v5, v3

    .line 172
    :goto_40
    iget-object v1, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_65

    if-nez v5, :cond_65

    .line 173
    iget-object v1, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 174
    if-eqz v1, :cond_63

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v5, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    const/4 v5, 0x1

    .line 172
    :goto_5f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_40

    :cond_63
    move v5, v3

    .line 174
    goto :goto_5f

    .line 176
    :cond_65
    if-nez v5, :cond_28

    .line 177
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 180
    :cond_6b
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 181
    invoke-static {v8}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 182
    iget-object v0, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 185
    :cond_7c
    return-void
.end method

.method static mergeCloudUsers(Ljava/util/List;)V
    .registers 15
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

    .line 128
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v8

    .line 129
    iget-object v0, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_11

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    :cond_11
    move v2, v3

    move v4, v3

    .line 133
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_57

    .line 134
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 135
    instance-of v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_27

    move v1, v4

    .line 133
    :goto_22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_13

    .line 138
    :cond_27
    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    move v5, v3

    move v6, v3

    .line 140
    :goto_2b
    iget-object v1, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_4e

    if-nez v6, :cond_4e

    .line 141
    iget-object v1, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 142
    if-eqz v1, :cond_4c

    iget-wide v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v12, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v1, v10, v12

    if-nez v1, :cond_4c

    move v6, v7

    .line 140
    :goto_48
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2b

    :cond_4c
    move v6, v3

    .line 142
    goto :goto_48

    .line 144
    :cond_4e
    if-nez v6, :cond_5d

    .line 145
    iget-object v1, v8, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    .line 146
    goto :goto_22

    .line 149
    :cond_57
    if-eqz v4, :cond_5c

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 152
    :cond_5c
    return-void

    :cond_5d
    move v1, v4

    goto :goto_22
.end method

.method private static migrateOnce(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 345
    if-eqz p0, :cond_f

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "migrated_v1"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 360
    :cond_f
    :goto_f
    return-void

    .line 348
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v1

    if-nez v1, :cond_54

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 350
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v1, v0

    .line 351
    :goto_2c
    if-eqz v2, :cond_51

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 352
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 353
    if-eqz v0, :cond_4d

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 354
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    .line 357
    :cond_51
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 359
    :cond_54
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migrated_v1"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_f
.end method

.method private static nextDeviceId()J
    .registers 12

    .prologue
    const-wide/16 v2, 0x1

    .line 1013
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 1014
    if-nez v7, :cond_3a

    move-wide v0, v2

    .line 1015
    :goto_9
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v8, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 1016
    const/4 v6, 0x0

    move-wide v4, v0

    :goto_11
    if-eqz v8, :cond_45

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_45

    .line 1017
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 1018
    if-eqz v0, :cond_5a

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    if-eqz v1, :cond_5a

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-ltz v1, :cond_5a

    .line 1019
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 1016
    :goto_36
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v0

    goto :goto_11

    .line 1014
    :cond_3a
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_device_id"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_9

    .line 1022
    :cond_45
    if-eqz v7, :cond_59

    .line 1023
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_device_id"

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1025
    :cond_59
    return-wide v4

    :cond_5a
    move-wide v0, v4

    goto :goto_36
.end method

.method private static nextProgramId()J
    .registers 12

    .prologue
    const-wide/16 v2, 0x1

    .line 997
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 998
    if-nez v7, :cond_3a

    move-wide v0, v2

    .line 999
    :goto_9
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v8, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 1000
    const/4 v6, 0x0

    move-wide v4, v0

    :goto_11
    if-eqz v8, :cond_45

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_45

    .line 1001
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1002
    if-eqz v0, :cond_5a

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_5a

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-ltz v1, :cond_5a

    .line 1003
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 1000
    :goto_36
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v0

    goto :goto_11

    .line 998
    :cond_3a
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_program_id"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_9

    .line 1006
    :cond_45
    if-eqz v7, :cond_59

    .line 1007
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_program_id"

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1009
    :cond_59
    return-wide v4

    :cond_5a
    move-wide v0, v4

    goto :goto_36
.end method

.method private static nextUserId()J
    .registers 12

    .prologue
    const-wide/32 v0, 0x186a0

    const-wide/16 v10, 0x1

    .line 980
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 981
    if-nez v5, :cond_32

    .line 982
    :goto_b
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v6, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 983
    const/4 v4, 0x0

    move-wide v2, v0

    :goto_13
    if-eqz v6, :cond_3d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3d

    .line 984
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 985
    if-eqz v0, :cond_54

    iget-wide v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    neg-long v8, v8

    cmp-long v1, v8, v2

    if-ltz v1, :cond_54

    .line 986
    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    neg-long v0, v0

    add-long/2addr v0, v10

    .line 983
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_13

    .line 981
    :cond_32
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "next_user_id"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_b

    .line 989
    :cond_3d
    if-eqz v5, :cond_52

    .line 990
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_user_id"

    add-long v4, v2, v10

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 992
    :cond_52
    neg-long v0, v2

    return-wide v0

    :cond_54
    move-wide v0, v2

    goto :goto_2e
.end method

.method public static onDeviceConnected(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 563
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 579
    :cond_c
    :goto_c
    return-void

    .line 567
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 568
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 569
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 570
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 575
    :cond_24
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->ensureDeviceRecord(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_c

    .line 576
    :catch_28
    move-exception v0

    .line 577
    const-string v1, "xems_local"

    const-string v2, "onDeviceConnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 572
    :cond_31
    :try_start_31
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_28

    move-result v0

    if-nez v0, :cond_24

    goto :goto_c
.end method

.method public static onDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 440
    if-eqz p0, :cond_e

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 455
    :cond_e
    :goto_e
    return-void

    .line 443
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 446
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_29} :catch_2a

    goto :goto_e

    .line 452
    :catch_2a
    move-exception v0

    .line 453
    const-string v1, "xems_local"

    const-string v2, "onDiscovered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public static onScanLost(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 459
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    :cond_8
    :goto_8
    return-void

    .line 462
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$2;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore$2;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public static pairedCount(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 582
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method static parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
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
    .line 1131
    if-nez p0, :cond_4

    .line 1132
    const/4 v0, 0x0

    .line 1134
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 892
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_local_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 428
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 4
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
    .line 1118
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1119
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 1120
    check-cast v0, Ljava/util/List;

    .line 1122
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static rememberDeletedProgram(J)V
    .registers 8

    .prologue
    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 203
    if-nez v1, :cond_7

    .line 217
    :cond_6
    :goto_6
    return-void

    .line 206
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->deletedPrograms()Ljava/util/Set;

    move-result-object v0

    .line 207
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_35

    .line 211
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 215
    :cond_39
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

    goto :goto_6
.end method

.method private static removeFromAdapterList(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 473
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 474
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 475
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 476
    if-nez v0, :cond_17

    .line 504
    :goto_16
    return-void

    .line 479
    :cond_17
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    monitor-enter v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_70

    .line 481
    :try_start_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_23
    if-ltz v2, :cond_5b

    .line 482
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 483
    if-eqz v1, :cond_79

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 484
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_7d

    .line 487
    :try_start_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "selects"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 488
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 489
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 490
    if-eqz v1, :cond_5b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 491
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3c .. :try_end_5b} :catch_80
    .catchall {:try_start_3c .. :try_end_5b} :catchall_7d

    .line 499
    :cond_5b
    :goto_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_7d

    .line 500
    :try_start_5c
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
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_6f} :catch_70

    goto :goto_16

    .line 501
    :catch_70
    move-exception v0

    .line 502
    const-string v1, "xems_local"

    const-string v2, "onScanLost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 481
    :cond_79
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_23

    .line 499
    :catchall_7d
    move-exception v1

    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v1
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_80} :catch_70

    .line 493
    :catch_80
    move-exception v1

    goto :goto_5b
.end method

.method static removeProgram(J)V
    .registers 8

    .prologue
    .line 688
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->rememberDeletedProgram(J)V

    .line 689
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    .line 690
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v0, :cond_c

    .line 700
    :goto_b
    return-void

    .line 693
    :cond_c
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_15
    if-ltz v1, :cond_38

    .line 694
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 695
    if-eqz v0, :cond_34

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v3, :cond_34

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p0

    if-nez v0, :cond_34

    .line 696
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 693
    :cond_34
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_15

    .line 699
    :cond_38
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    goto :goto_b
.end method

.method static removeUserQuiet(J)V
    .registers 8

    .prologue
    .line 1075
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    .line 1076
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_9

    .line 1087
    :goto_8
    return-void

    .line 1079
    :cond_9
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_2d

    .line 1080
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1081
    if-eqz v0, :cond_29

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v0, v4, p0

    if-nez v0, :cond_29

    .line 1082
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1079
    :cond_29
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    .line 1085
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 1086
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    goto :goto_8
.end method

.method private static renameSeededProgram(Lcom/isaigu/gymapp/mgr/DataMgr;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 825
    const/4 v1, 0x0

    move v2, v3

    .line 826
    :goto_3
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3d

    .line 827
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 828
    if-nez v0, :cond_1a

    move-object v0, v1

    .line 826
    :cond_16
    :goto_16
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_3

    .line 831
    :cond_1a
    const-string v4, "Test"

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 856
    :cond_24
    :goto_24
    return-void

    .line 834
    :cond_25
    if-nez v1, :cond_3b

    const-string v4, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "Workout 1"

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    :cond_3b
    move-object v0, v1

    goto :goto_16

    .line 838
    :cond_3d
    if-eqz v1, :cond_24

    .line 841
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 842
    const-string v0, "Test"

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 844
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-eqz v0, :cond_70

    move v1, v3

    move v2, v3

    .line 845
    :goto_4b
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_71

    .line 846
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 847
    if-eqz v0, :cond_77

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 848
    const-string v2, "Test"

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    .line 849
    const/4 v2, 0x1

    move v0, v2

    .line 845
    :goto_6b
    add-int/lit8 v3, v1, 0x1

    move v1, v3

    move v2, v0

    goto :goto_4b

    :cond_70
    move v2, v3

    .line 853
    :cond_71
    if-eqz v2, :cond_24

    .line 854
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    goto :goto_24

    :cond_77
    move v0, v2

    goto :goto_6b
.end method

.method private static repairSeededProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 863
    if-eqz p0, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_20

    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 864
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "Workout 1"

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 878
    :cond_20
    :goto_20
    return v0

    .line 867
    :cond_21
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    const/16 v2, 0x55

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-ne v1, v3, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-ne v1, v3, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_20

    .line 872
    invoke-static {}, Lcom/isaigu/gymapp/bean/TrainProgram;->getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 873
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 874
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 875
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 876
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 877
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 878
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private static repairUsers(Ljava/util/List;)V
    .registers 5
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
    .line 1044
    if-nez p0, :cond_3

    .line 1062
    :cond_2
    return-void

    .line 1047
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1048
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1049
    if-nez v0, :cond_17

    .line 1047
    :cond_13
    :goto_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1052
    :cond_17
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f

    .line 1053
    :cond_23
    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    .line 1055
    :cond_2f
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 1056
    const-string v2, ""

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 1058
    :cond_37
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 1059
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    goto :goto_13
.end method

.method private static saveDevices()V
    .registers 3

    .prologue
    .line 1110
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 1111
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 1112
    const-string v1, "file_name_device_data"

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1114
    :cond_11
    return-void
.end method

.method private static savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V
    .registers 5
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
    .line 943
    if-nez p0, :cond_3

    .line 955
    :goto_2
    return-void

    .line 946
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 947
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 948
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 949
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 950
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 954
    :cond_27
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

    goto :goto_2
.end method

.method public static saveProgram(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 659
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 672
    :cond_c
    :goto_c
    return-void

    .line 663
    :cond_d
    :try_start_d
    iput-object p3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 664
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 665
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 666
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0430 \u043b\u043e\u043a\u0430\u043b\u043d\u043e"

    const-string v1, "Program saved locally"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_25} :catch_26

    goto :goto_c

    .line 668
    :catch_26
    move-exception v0

    .line 669
    const-string v1, "xems_local"

    const-string v2, "saveProgram"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    const-string v0, "\u0413\u0440\u0435\u0448\u043a\u0430 \u043f\u0440\u0438 \u0437\u0430\u043f\u0430\u0437\u0432\u0430\u043d\u0435"

    const-string v1, "Save failed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_c
.end method

.method static savePrograms()V
    .registers 3

    .prologue
    .line 1103
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 1104
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 1105
    const-string v1, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1107
    :cond_11
    return-void
.end method

.method public static saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V
    .registers 7

    .prologue
    .line 610
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 627
    :cond_4
    :goto_4
    return-void

    .line 613
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 614
    if-nez p2, :cond_3c

    .line 615
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 616
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 617
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v1, :cond_23

    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 620
    :cond_23
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :goto_28
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 625
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 626
    const-string v0, "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u044f\u0442 \u0435 \u0437\u0430\u043f\u0430\u0437\u0435\u043d \u043b\u043e\u043a\u0430\u043b\u043d\u043e"

    const-string v1, "User saved locally"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_4

    .line 622
    :cond_3c
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_28
.end method

.method static saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V
    .registers 6

    .prologue
    .line 631
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 632
    if-nez p1, :cond_2c

    .line 633
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 634
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 635
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v1, :cond_1e

    .line 636
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 638
    :cond_1e
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :goto_23
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 643
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 644
    return-void

    .line 640
    :cond_2c
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_23
.end method

.method private static saveUsers()V
    .registers 3

    .prologue
    .line 1065
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->repairUsers(Ljava/util/List;)V

    .line 1066
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 1067
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 1068
    const-string v1, "file_name_user_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1070
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->changed()V

    .line 1071
    return-void
.end method

.method private static seedDefaultProgramIfNeeded()V
    .registers 4

    .prologue
    .line 809
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 810
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 818
    :goto_10
    return-void

    .line 813
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/bean/TrainProgram;->getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 814
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 815
    const-string v2, "Test"

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 816
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 817
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method private static showDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 508
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 509
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 510
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 511
    if-nez v0, :cond_18

    .line 555
    :goto_17
    return-void

    .line 514
    :cond_18
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    monitor-enter v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_3d

    move v2, v1

    .line 516
    :goto_1e
    :try_start_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4a

    .line 517
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 518
    if-eqz v1, :cond_46

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 519
    monitor-exit v0

    goto :goto_17

    .line 547
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v1
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 552
    :catch_3d
    move-exception v0

    .line 553
    const-string v1, "xems_local"

    const-string v2, "showDiscovered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 516
    :cond_46
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e

    .line 522
    :cond_4a
    :try_start_4a
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v1

    .line 523
    if-nez v1, :cond_c8

    .line 524
    new-instance v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    .line 525
    iput-object p1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    .line 526
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 527
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    .line 531
    :cond_67
    :goto_67
    iput-object p2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    .line 532
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_3a

    .line 536
    :try_start_6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "selects"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 537
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 538
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 539
    if-eqz v1, :cond_93

    .line 540
    :goto_82
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_93

    .line 541
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6c .. :try_end_91} :catch_92
    .catchall {:try_start_6c .. :try_end_91} :catchall_3a

    goto :goto_82

    .line 544
    :catch_92
    move-exception v1

    .line 547
    :cond_93
    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_3a

    .line 548
    :try_start_94
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

    .line 549
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

    .line 550
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 551
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_c6} :catch_3d

    goto/16 :goto_17

    .line 528
    :cond_c8
    :try_start_c8
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    if-eqz v2, :cond_d6

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 529
    :cond_d6
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;
    :try_end_dc
    .catchall {:try_start_c8 .. :try_end_dc} :catchall_3a

    goto :goto_67
.end method

.method static storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 7

    .prologue
    .line 676
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 677
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_f

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 680
    :cond_f
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_29

    .line 681
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 683
    :cond_29
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 684
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 685
    return-void
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1138
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method
