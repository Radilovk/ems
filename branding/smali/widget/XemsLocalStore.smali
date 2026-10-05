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

.field static final DEMO_PROGRAM:Ljava/lang/String; = "Main"

.field static final FILE_DEVICES:Ljava/lang/String; = "file_name_device_data"

.field static final FILE_HIDDEN_PROGRAMS:Ljava/lang/String; = "xems_hidden_programs"

.field static final FILE_OFFLINE_USERS:Ljava/lang/String; = "file_name_offline_user_data"

.field static final FILE_PROGRAMS:Ljava/lang/String; = "file_name_train_data"

.field private static final FILE_PROTOCOL:Ljava/lang/String; = "file_name_register_protocol_data"

.field static final FILE_USERS:Ljava/lang/String; = "file_name_user_data"

.field private static final FIRST_USER_ID:J = 0x186a0L

.field private static final KEY_BASE_MAIN:Ljava/lang/String; = "base_main_v1"

.field private static final KEY_DELETED_PROGRAMS:Ljava/lang/String; = "deleted_program_ids"

.field private static final KEY_HIDDEN_PROGRAM_NAMES:Ljava/lang/String; = "hidden_program_names"

.field private static final KEY_HID_CLOUD_PROGRAMS:Ljava/lang/String; = "hid_cloud_programs_v1"

.field private static final KEY_MIGRATED:Ljava/lang/String; = "migrated_v1"

.field private static final KEY_NEXT_DEVICE_ID:Ljava/lang/String; = "next_device_id"

.field private static final KEY_NEXT_PROGRAM_ID:Ljava/lang/String; = "next_program_id"

.field private static final KEY_NEXT_USER_ID:Ljava/lang/String; = "next_user_id"

.field private static final KEY_PAIRED_MACS:Ljava/lang/String; = "paired_macs"

.field private static final MAIN:Landroid/os/Handler;

.field private static final OLD_DEMO_PROGRAMS:[Ljava/lang/String;

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
    .registers 3

    .prologue
    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Test"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Workout 1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->OLD_DEMO_PROGRAMS:[Ljava/lang/String;

    .line 325
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    .line 328
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->showDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->removeFromAdapterList(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static applyBaseSettings(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 10

    .prologue
    .line 783
    if-nez p0, :cond_3

    .line 792
    :goto_2
    return-void

    .line 786
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v1, 0x28

    const/16 v2, 0x15e

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/16 v5, 0x1f4

    const/16 v6, 0x1f4

    const/4 v7, 0x1

    const/4 v8, 0x7

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->base(Lcom/isaigu/gymapp/bean/ProgramDataBean;IIIIIIZI)V

    .line 787
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v1, 0x50

    const/16 v2, 0x15e

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v5, 0x3e8

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->base(Lcom/isaigu/gymapp/bean/ProgramDataBean;IIIIIIZI)V

    .line 788
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 789
    const/4 v1, 0x7

    const/16 v2, 0x15e

    if-eqz v0, :cond_50

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v3, :cond_50

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    :goto_32
    const/4 v4, 0x1

    .line 790
    if-eqz v0, :cond_53

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    :goto_37
    if-eqz v0, :cond_55

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    :goto_3b
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 789
    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->base(Lcom/isaigu/gymapp/bean/ProgramDataBean;IIIIIIZI)V

    .line 791
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v1, 0x78

    const/16 v2, 0x96

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->base(Lcom/isaigu/gymapp/bean/ProgramDataBean;IIIIIIZI)V

    goto :goto_2

    .line 789
    :cond_50
    const/16 v3, 0xf

    goto :goto_32

    .line 790
    :cond_53
    const/4 v5, 0x0

    goto :goto_37

    :cond_55
    const/4 v6, 0x0

    goto :goto_3b
.end method

.method private static applyBaseSettingsOnce(Lcom/isaigu/gymapp/mgr/DataMgr;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 819
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 820
    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "base_main_v1"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_18

    .line 836
    :cond_17
    :goto_17
    return-void

    :cond_18
    move v1, v0

    .line 823
    :goto_19
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 824
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 825
    if-eqz v0, :cond_55

    const-string v3, "Main"

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 826
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->applyBaseSettings(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 828
    :try_start_38
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_59

    .line 831
    :goto_3b
    const-string v0, "xems_local"

    const-string v1, "base settings put into Main"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "base_main_v1"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_17

    .line 823
    :cond_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 829
    :catch_59
    move-exception v0

    goto :goto_3b
.end method

.method public static autoSelectFirstProgram(Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 522
    if-nez p0, :cond_3

    .line 539
    :cond_2
    :goto_2
    return-void

    .line 525
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 526
    const-string v0, "programDatas"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 527
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 529
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 532
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 533
    const-string v2, "updateSelectedProgram"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 534
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 535
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_41} :catch_42

    goto :goto_2

    .line 536
    :catch_42
    move-exception v0

    .line 537
    const-string v1, "xems_local"

    const-string v2, "autoSelectFirstProgram"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static base(Lcom/isaigu/gymapp/bean/ProgramDataBean;IIIIIIZI)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 796
    if-nez p0, :cond_4

    .line 815
    :cond_3
    :goto_3
    return-void

    .line 799
    :cond_4
    iput p1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 800
    iput p2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 801
    iput p3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 802
    iput p4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 803
    iput p5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 804
    iput p6, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 805
    iput-boolean p7, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 806
    if-eqz p7, :cond_1f

    .line 807
    iput p8, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 808
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-gtz v0, :cond_3

    .line 809
    const/16 v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    goto :goto_3

    .line 812
    :cond_1f
    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 813
    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    goto :goto_3
.end method

.method public static bootstrapOnline(Lcom/isaigu/gymapp/fragment/MainFragment;)V
    .registers 4

    .prologue
    .line 97
    if-eqz p0, :cond_34

    :try_start_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 98
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/MainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 99
    :goto_c
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadDevices(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadProtocol()V

    .line 101
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadUsers()V

    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->loadPrograms()V

    .line 103
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->migrateOnce(Landroid/content/Context;)V

    .line 104
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$DossierSink;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore$DossierSink;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsDossier;->init(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsDossier$Sink;)V

    .line 105
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->changed()V

    .line 106
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->start(Landroid/content/Context;)V

    .line 107
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 108
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 114
    :goto_33
    return-void

    .line 98
    :cond_34
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_37} :catch_39

    move-result-object v0

    goto :goto_c

    .line 111
    :catch_39
    move-exception v0

    .line 112
    const-string v1, "xems_local"

    const-string v2, "bootstrapOnline"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method private static bumpCounters(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1107
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_user_id"

    .line 1108
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_program_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_device_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1111
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    .line 1112
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    .line 1113
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    .line 1114
    return-void
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
    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 119
    if-nez v1, :cond_c

    .line 127
    :cond_b
    return-object v0

    .line 122
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

    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_35

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method private static demoProfile(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 5

    .prologue
    .line 222
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    if-nez v0, :cond_7

    .line 239
    :cond_6
    :goto_6
    return-void

    .line 226
    :cond_7
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    iget-wide v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 228
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

    .line 231
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

    .line 232
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 234
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

    .line 235
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

    .line 236
    :catch_ae
    move-exception v0

    .line 237
    const-string v1, "xems_local"

    const-string v2, "demo profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method

.method static displayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 357
    if-eqz p0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    :goto_e
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    move-object p0, v0

    :cond_17
    return-object p0

    .line 357
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
    .line 1203
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1204
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
    .line 985
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 998
    :goto_6
    return-void

    .line 988
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 989
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-nez v1, :cond_16

    .line 990
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 992
    :cond_16
    new-instance v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    .line 993
    iput-object p0, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    .line 994
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 995
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    .line 996
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
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

    .line 189
    const/4 v3, 0x0

    move v1, v2

    .line 190
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_89

    .line 191
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 192
    if-eqz v0, :cond_84

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_84

    .line 197
    :goto_19
    if-nez v0, :cond_48

    .line 198
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 199
    iput-wide v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 200
    sget-object v1, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 201
    const/16 v1, 0xa8

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 202
    const/high16 v1, 0x42800000    # 64.0f

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 203
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 204
    const/4 v3, 0x1

    const/16 v4, -0x26

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 205
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 206
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 207
    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 209
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

    .line 210
    :cond_60
    const-string v1, "Demo"

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 211
    const-string v1, "Demo"

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 213
    :cond_68
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    if-eqz v1, :cond_7c

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isOldDemoName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 214
    :cond_7c
    const-string v1, "Main"

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    .line 216
    :cond_80
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->demoProfile(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 217
    return-void

    .line 190
    :cond_84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    :cond_89
    move-object v0, v3

    goto :goto_19
.end method

.method public static exportBackup(Landroid/app/Activity;Landroid/net/Uri;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 640
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 665
    :cond_6
    :goto_6
    return v0

    .line 644
    :cond_7
    :try_start_7
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 645
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 646
    const-string v3, "exportedAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    const-string v3, "users"

    const-string v4, "file_name_user_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    const-string v3, "programs"

    const-string v4, "file_name_train_data"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 649
    const-string v3, "devices"

    const-string v4, "file_name_device_data"

    const-class v5, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->dmList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    const-string v3, "records"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->allRecords()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    const-string v3, "pairedMacs"

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 654
    if-eqz v3, :cond_6

    .line 657
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 658
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 659
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 660
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

    .line 661
    goto/16 :goto_6

    .line 662
    :catch_a0
    move-exception v2

    .line 663
    const-string v3, "xems_local"

    const-string v4, "exportBackup"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
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
    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static finishSetup()V
    .registers 0

    .prologue
    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->finishSetup()V

    .line 90
    return-void
.end method

.method public static finishUserDialog(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .registers 3

    .prologue
    .line 582
    if-nez p0, :cond_3

    .line 589
    :cond_2
    :goto_2
    return-void

    .line 585
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_2

    instance-of v1, p0, Lcom/isaigu/gymapp/BaseDialogFragment;

    if-eqz v1, :cond_2

    .line 587
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    goto :goto_2
.end method

.method private static followHiddenPrograms(Ljava/util/List;)V
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
    .line 884
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 885
    if-nez v0, :cond_f

    const-string v0, ""

    .line 886
    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    .line 896
    :cond_e
    return-void

    .line 885
    :cond_f
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hidden_program_names"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 889
    :cond_1c
    new-instance v2, Ljava/util/HashSet;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 890
    const/4 v0, 0x0

    move v1, v0

    :goto_2d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 891
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 892
    if-eqz v0, :cond_4b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    if-eqz v3, :cond_4b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 893
    const-string v3, "Main"

    iput-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    .line 890
    :cond_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d
.end method

.method static getAppContext()Landroid/content/Context;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 960
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 961
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 962
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 964
    :goto_1a
    return-object v0

    .line 963
    :catch_1b
    move-exception v0

    move-object v0, v1

    .line 964
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
    .line 1001
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1002
    if-nez p0, :cond_9

    move-object v0, v1

    .line 1016
    :goto_8
    return-object v0

    .line 1005
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "paired_macs"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v0, v1

    .line 1007
    goto :goto_8

    .line 1009
    :cond_1d
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1010
    const/4 v0, 0x0

    :goto_24
    array-length v3, v2

    if-ge v0, v3, :cond_39

    .line 1011
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1012
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_36

    .line 1013
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_39
    move-object v0, v1

    .line 1016
    goto :goto_8
.end method

.method private static hideCloudProgramsOnce(Lcom/isaigu/gymapp/mgr/DataMgr;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 845
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 846
    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "hid_cloud_programs_v1"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_18

    .line 880
    :cond_17
    :goto_17
    return-void

    .line 849
    :cond_18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 850
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 851
    :goto_23
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 852
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 853
    if-nez v0, :cond_39

    .line 851
    :goto_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 856
    :cond_39
    const-string v5, "Main"

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 857
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 859
    :cond_47
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 862
    :cond_4b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 863
    const-string v0, "xems_hidden_programs"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 864
    if-nez v0, :cond_60

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 867
    :cond_60
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 868
    const-string v1, "xems_hidden_programs"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v5, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hidden_program_names"

    const-string v6, ""

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 870
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7f
    :goto_7f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 871
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 872
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a1

    const-string v1, "\n"

    :goto_97
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    :cond_a1
    const-string v1, ""

    goto :goto_97

    .line 875
    :cond_a4
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hidden_program_names"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 877
    :cond_b9
    iput-object v3, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 878
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hid_cloud_programs_v1"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 879
    const-string v0, "xems_local"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud programs put aside: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method

.method public static importBackup(Landroid/app/Activity;Landroid/net/Uri;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 671
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v1

    .line 733
    :goto_7
    return v0

    .line 674
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 675
    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442 \u0438\u043c\u0430 \u0441\u0430\u043c\u043e \u043f\u0440\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v3, "Import is only available in the tablet setup"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 677
    goto :goto_7

    .line 680
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 681
    if-nez v0, :cond_2b

    move v0, v1

    .line 682
    goto :goto_7

    .line 684
    :cond_2b
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    :goto_3c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 688
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_4b} :catch_4c

    goto :goto_3c

    .line 730
    :catch_4c
    move-exception v0

    .line 731
    const-string v3, "xems_local"

    const-string v4, "importBackup"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442\u044a\u0442 \u043d\u0435 \u0443\u0441\u043f\u044f"

    const-string v3, "Import failed"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 733
    goto :goto_7

    .line 690
    :cond_65
    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 692
    if-nez v0, :cond_74

    move v0, v1

    .line 693
    goto :goto_7

    .line 695
    :cond_74
    const-string v3, "users"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    const-class v4, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 696
    const-string v4, "programs"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    const-class v5, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 697
    const-string v5, "devices"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    const-class v6, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->parseList(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 698
    if-eqz v3, :cond_a7

    .line 699
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iput-object v3, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 700
    const-string v6, "file_name_user_data"

    const-class v7, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v6, v7, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 702
    :cond_a7
    if-eqz v4, :cond_b9

    .line 703
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iput-object v4, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 704
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 705
    const-string v3, "file_name_train_data"

    const-class v6, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v3, v6, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 707
    :cond_b9
    if-eqz v5, :cond_c8

    .line 708
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    iput-object v5, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 709
    const-string v3, "file_name_device_data"

    const-class v4, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 711
    :cond_c8
    const-string v3, "records"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 712
    const-string v3, "records"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalApi;->replaceRecords(Lcom/alibaba/fastjson/JSONArray;)V

    .line 714
    :cond_d9
    const-string v3, "pairedMacs"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 715
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 716
    const-string v3, "pairedMacs"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 717
    if-eqz v5, :cond_110

    move v3, v1

    .line 718
    :goto_f9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_110

    .line 719
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f9

    .line 722
    :cond_110
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 725
    :cond_113
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->bumpCounters(Landroid/content/Context;)V

    .line 726
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 727
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 728
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

    .line 729
    goto/16 :goto_7
.end method

.method public static isAdminSession()Z
    .registers 1

    .prologue
    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_9

    .line 78
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 80
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

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 314
    :goto_9
    return v0

    .line 304
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    .line 306
    goto :goto_9

    .line 308
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 309
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 310
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    .line 311
    goto :goto_9

    :cond_3a
    move v0, v1

    .line 314
    goto :goto_9
.end method

.method public static isEmsDevice(Ljava/lang/Object;[B)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 339
    :try_start_1
    const-string v0, "address"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    if-nez v1, :cond_57

    const-string v1, ""

    move-object v3, v1

    .line 342
    :goto_16
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 343
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

    .line 345
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

    .line 346
    :goto_42
    if-eqz v1, :cond_55

    if-eqz v0, :cond_55

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_55

    .line 347
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsLocalStore;->SEEN_NAMES:Ljava/util/Map;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    move v0, v1

    .line 351
    :goto_56
    return v0

    .line 341
    :cond_57
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5a} :catch_5f

    move-result-object v1

    move-object v3, v1

    goto :goto_16

    .line 345
    :cond_5d
    const/4 v1, 0x0

    goto :goto_42

    .line 350
    :catch_5f
    move-exception v0

    move v0, v2

    .line 351
    goto :goto_56
.end method

.method private static isOldDemoName(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 765
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalStore;->OLD_DEMO_PROGRAMS:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    .line 766
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 767
    const/4 v0, 0x1

    .line 770
    :cond_10
    return v0

    .line 765
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static isUserSession()Z
    .registers 1

    .prologue
    .line 84
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
    .line 973
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 974
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 975
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 976
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 977
    if-eqz v0, :cond_29

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 981
    :goto_28
    return-object v0

    .line 975
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 981
    :cond_2d
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static loadDevices(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 260
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    .line 261
    const-string v0, "file_name_device_data"

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 262
    if-nez v0, :cond_13

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    :cond_13
    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 266
    return-void
.end method

.method public static loadPrograms()V
    .registers 4

    .prologue
    .line 242
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    .line 243
    const-string v0, "file_name_train_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 244
    if-nez v0, :cond_40

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 247
    :goto_14
    const/4 v0, 0x0

    move v2, v0

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_29

    .line 248
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->repairSeededProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    .line 247
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    .line 250
    :cond_29
    iput-object v1, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 251
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->renameSeededProgram(Lcom/isaigu/gymapp/mgr/DataMgr;)V

    .line 252
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->hideCloudProgramsOnce(Lcom/isaigu/gymapp/mgr/DataMgr;)V

    .line 253
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->seedDefaultProgramIfNeeded()V

    .line 254
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->applyBaseSettingsOnce(Lcom/isaigu/gymapp/mgr/DataMgr;)V

    .line 255
    iget-object v0, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->mergeList(Ljava/util/List;)V

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 257
    return-void

    :cond_40
    move-object v1, v0

    goto :goto_14
.end method

.method private static loadProtocol()V
    .registers 2

    .prologue
    .line 269
    const-string v0, "file_name_register_protocol_data"

    const-class v1, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 270
    if-eqz v0, :cond_12

    .line 271
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->registerProtocolVO:Lcom/isaigu/gymapp/bean/vo/RegisterProtocolVO;

    .line 273
    :cond_12
    return-void
.end method

.method public static loadUsers()V
    .registers 8

    .prologue
    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    .line 150
    const-string v0, "file_name_user_data"

    const-class v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 151
    if-nez v0, :cond_61

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 155
    :goto_14
    const-string v0, "file_name_offline_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->readList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 157
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    const-string v0, "file_name_offline_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 160
    :cond_33
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->ensureSampleUser(Ljava/util/List;)V

    .line 161
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->followHiddenPrograms(Ljava/util/List;)V

    .line 162
    iput-object v1, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 164
    const/4 v0, 0x0

    move v2, v0

    :goto_3d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5d

    .line 165
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 166
    if-eqz v0, :cond_59

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_59

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 164
    :cond_59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3d

    .line 170
    :cond_5d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 171
    return-void

    :cond_61
    move-object v1, v0

    goto :goto_14
.end method

.method static macKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1036
    if-nez p0, :cond_6

    .line 1037
    const-string v0, ""

    .line 1052
    :goto_5
    return-object v0

    .line 1039
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 1042
    :goto_15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 1043
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1044
    const/16 v5, 0x30

    if-lt v1, v5, :cond_27

    const/16 v5, 0x39

    if-le v1, v5, :cond_2f

    :cond_27
    const/16 v5, 0x41

    if-lt v1, v5, :cond_49

    const/16 v5, 0x46

    if-gt v1, v5, :cond_49

    .line 1045
    :cond_2f
    if-lez v2, :cond_3a

    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_3a

    .line 1046
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1048
    :cond_3a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 1042
    :goto_40
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_15

    .line 1052
    :cond_44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_49
    move v1, v2

    goto :goto_40
.end method

.method private static migrateOnce(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 280
    if-eqz p0, :cond_f

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "migrated_v1"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 295
    :cond_f
    :goto_f
    return-void

    .line 283
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v1

    if-nez v1, :cond_54

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 284
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 285
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v1, v0

    .line 286
    :goto_2c
    if-eqz v2, :cond_51

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 287
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 288
    if-eqz v0, :cond_4d

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 289
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    .line 292
    :cond_51
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 294
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

    .line 1090
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 1091
    if-nez v7, :cond_3a

    move-wide v0, v2

    .line 1092
    :goto_9
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v8, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    .line 1093
    const/4 v6, 0x0

    move-wide v4, v0

    :goto_11
    if-eqz v8, :cond_45

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_45

    .line 1094
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 1095
    if-eqz v0, :cond_5a

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    if-eqz v1, :cond_5a

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-ltz v1, :cond_5a

    .line 1096
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 1093
    :goto_36
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v0

    goto :goto_11

    .line 1091
    :cond_3a
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_device_id"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_9

    .line 1099
    :cond_45
    if-eqz v7, :cond_59

    .line 1100
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_device_id"

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1102
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

    .line 1074
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v7

    .line 1075
    if-nez v7, :cond_3a

    move-wide v0, v2

    .line 1076
    :goto_9
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v8, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 1077
    const/4 v6, 0x0

    move-wide v4, v0

    :goto_11
    if-eqz v8, :cond_45

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_45

    .line 1078
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 1079
    if-eqz v0, :cond_5a

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_5a

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-ltz v1, :cond_5a

    .line 1080
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 1077
    :goto_36
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v0

    goto :goto_11

    .line 1075
    :cond_3a
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_program_id"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_9

    .line 1083
    :cond_45
    if-eqz v7, :cond_59

    .line 1084
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_program_id"

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1086
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

    .line 1057
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 1058
    if-nez v5, :cond_32

    .line 1059
    :goto_b
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v6, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 1060
    const/4 v4, 0x0

    move-wide v2, v0

    :goto_13
    if-eqz v6, :cond_3d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3d

    .line 1061
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1062
    if-eqz v0, :cond_54

    iget-wide v8, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    neg-long v8, v8

    cmp-long v1, v8, v2

    if-ltz v1, :cond_54

    .line 1063
    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    neg-long v0, v0

    add-long/2addr v0, v10

    .line 1060
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_13

    .line 1058
    :cond_32
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "next_user_id"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_b

    .line 1066
    :cond_3d
    if-eqz v5, :cond_52

    .line 1067
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_user_id"

    add-long v4, v2, v10

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1069
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
    .line 498
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 514
    :cond_c
    :goto_c
    return-void

    .line 502
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 503
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getPairedMacs(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 504
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 505
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePairedMacs(Landroid/content/Context;Ljava/util/Set;)V

    .line 510
    :cond_24
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->ensureDeviceRecord(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_c

    .line 511
    :catch_28
    move-exception v0

    .line 512
    const-string v1, "xems_local"

    const-string v2, "onDeviceConnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 507
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
    .line 375
    if-eqz p0, :cond_e

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 390
    :cond_e
    :goto_e
    return-void

    .line 378
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 381
    :cond_1f
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalStore;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_29} :catch_2a

    goto :goto_e

    .line 387
    :catch_2a
    move-exception v0

    .line 388
    const-string v1, "xems_local"

    const-string v2, "onDiscovered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public static onScanLost(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 394
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 403
    :cond_8
    :goto_8
    return-void

    .line 397
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
    .line 517
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
    .line 1208
    if-nez p0, :cond_4

    .line 1209
    const/4 v0, 0x0

    .line 1211
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
    .line 969
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
    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 363
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
    .line 1195
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1196
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 1197
    check-cast v0, Ljava/util/List;

    .line 1199
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static rememberDeletedProgram(J)V
    .registers 8

    .prologue
    .line 131
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    if-nez v1, :cond_7

    .line 146
    :cond_6
    :goto_6
    return-void

    .line 135
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->deletedPrograms()Ljava/util/Set;

    move-result-object v0

    .line 136
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_35

    .line 140
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 144
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
    .line 408
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 409
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 410
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 411
    if-nez v0, :cond_17

    .line 439
    :goto_16
    return-void

    .line 414
    :cond_17
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    monitor-enter v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_70

    .line 416
    :try_start_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_23
    if-ltz v2, :cond_5b

    .line 417
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 418
    if-eqz v1, :cond_79

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 419
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_7d

    .line 422
    :try_start_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "selects"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 423
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 424
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 425
    if-eqz v1, :cond_5b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 426
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3c .. :try_end_5b} :catch_80
    .catchall {:try_start_3c .. :try_end_5b} :catchall_7d

    .line 434
    :cond_5b
    :goto_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_7d

    .line 435
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

    .line 436
    :catch_70
    move-exception v0

    .line 437
    const-string v1, "xems_local"

    const-string v2, "onScanLost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 416
    :cond_79
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_23

    .line 434
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

    .line 428
    :catch_80
    move-exception v1

    goto :goto_5b
.end method

.method static removeProgram(J)V
    .registers 8

    .prologue
    .line 623
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->rememberDeletedProgram(J)V

    .line 624
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    .line 625
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v0, :cond_c

    .line 635
    :goto_b
    return-void

    .line 628
    :cond_c
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_15
    if-ltz v1, :cond_38

    .line 629
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 630
    if-eqz v0, :cond_34

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v3, :cond_34

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p0

    if-nez v0, :cond_34

    .line 631
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 628
    :cond_34
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_15

    .line 634
    :cond_38
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    goto :goto_b
.end method

.method static removeUserQuiet(J)V
    .registers 8

    .prologue
    .line 1152
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    .line 1153
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_9

    .line 1164
    :goto_8
    return-void

    .line 1156
    :cond_9
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_2d

    .line 1157
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1158
    if-eqz v0, :cond_29

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v0, v4, p0

    if-nez v0, :cond_29

    .line 1159
    iget-object v0, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1156
    :cond_29
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    .line 1162
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 1163
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    goto :goto_8
.end method

.method private static renameSeededProgram(Lcom/isaigu/gymapp/mgr/DataMgr;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 903
    const/4 v1, 0x0

    move v2, v3

    .line 904
    :goto_3
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_31

    .line 905
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 906
    if-nez v0, :cond_1a

    move-object v0, v1

    .line 904
    :cond_16
    :goto_16
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_3

    .line 909
    :cond_1a
    const-string v4, "Main"

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 933
    :cond_24
    :goto_24
    return-void

    .line 912
    :cond_25
    if-nez v1, :cond_2f

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isOldDemoName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    :cond_2f
    move-object v0, v1

    goto :goto_16

    .line 916
    :cond_31
    if-eqz v1, :cond_24

    .line 919
    const-string v0, "Main"

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-eqz v0, :cond_62

    move v1, v3

    move v2, v3

    .line 922
    :goto_3d
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_63

    .line 923
    iget-object v0, p0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 924
    if-eqz v0, :cond_69

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isOldDemoName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 925
    const-string v2, "Main"

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    .line 926
    const/4 v2, 0x1

    move v0, v2

    .line 922
    :goto_5d
    add-int/lit8 v3, v1, 0x1

    move v1, v3

    move v2, v0

    goto :goto_3d

    :cond_62
    move v2, v3

    .line 930
    :cond_63
    if-eqz v2, :cond_24

    .line 931
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    goto :goto_24

    :cond_69
    move v0, v2

    goto :goto_5d
.end method

.method private static repairSeededProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 940
    if-eqz p0, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_20

    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 1"

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "Workout 1"

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 955
    :cond_20
    :goto_20
    return v0

    .line 944
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

    .line 949
    invoke-static {}, Lcom/isaigu/gymapp/bean/TrainProgram;->getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 950
    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 951
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 952
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 953
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 954
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 955
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
    .line 1121
    if-nez p0, :cond_3

    .line 1139
    :cond_2
    return-void

    .line 1124
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1125
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1126
    if-nez v0, :cond_17

    .line 1124
    :cond_13
    :goto_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1129
    :cond_17
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f

    .line 1130
    :cond_23
    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    .line 1132
    :cond_2f
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 1133
    const-string v2, ""

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 1135
    :cond_37
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 1136
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    goto :goto_13
.end method

.method private static saveDevices()V
    .registers 3

    .prologue
    .line 1187
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 1188
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 1189
    const-string v1, "file_name_device_data"

    const-class v2, Lcom/isaigu/gymapp/bean/DeviceBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->deviceBeanList:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1191
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
    .line 1020
    if-nez p0, :cond_3

    .line 1032
    :goto_2
    return-void

    .line 1023
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1025
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1026
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1027
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1029
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1031
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
    .line 594
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 607
    :cond_c
    :goto_c
    return-void

    .line 598
    :cond_d
    :try_start_d
    iput-object p3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 599
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->storeProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 600
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 601
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0430 \u043b\u043e\u043a\u0430\u043b\u043d\u043e"

    const-string v1, "Program saved locally"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_25} :catch_26

    goto :goto_c

    .line 603
    :catch_26
    move-exception v0

    .line 604
    const-string v1, "xems_local"

    const-string v2, "saveProgram"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
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
    .line 1180
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 1181
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 1182
    const-string v1, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1184
    :cond_11
    return-void
.end method

.method public static saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V
    .registers 7

    .prologue
    .line 545
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 562
    :cond_4
    :goto_4
    return-void

    .line 548
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 549
    if-nez p2, :cond_3c

    .line 550
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 551
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 552
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v1, :cond_23

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 555
    :cond_23
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :goto_28
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 560
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 561
    const-string v0, "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u044f\u0442 \u0435 \u0437\u0430\u043f\u0430\u0437\u0435\u043d \u043b\u043e\u043a\u0430\u043b\u043d\u043e"

    const-string v1, "User saved locally"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_4

    .line 557
    :cond_3c
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_28
.end method

.method static saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V
    .registers 6

    .prologue
    .line 566
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 567
    if-nez p1, :cond_2c

    .line 568
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextUserId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 569
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 570
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-nez v1, :cond_1e

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 573
    :cond_1e
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :goto_23
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUsers()V

    .line 578
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 579
    return-void

    .line 575
    :cond_2c
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_23
.end method

.method private static saveUsers()V
    .registers 3

    .prologue
    .line 1142
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->repairUsers(Ljava/util/List;)V

    .line 1143
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 1144
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 1145
    const-string v1, "file_name_user_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 1147
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->changed()V

    .line 1148
    return-void
.end method

.method private static seedDefaultProgramIfNeeded()V
    .registers 5

    .prologue
    .line 744
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 745
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 762
    :goto_10
    return-void

    .line 748
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/bean/TrainProgram;->getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 749
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 750
    const-string v2, "Main"

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 751
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->applyBaseSettings(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 753
    :try_start_26
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_4e

    .line 756
    :goto_29
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 757
    if-eqz v2, :cond_41

    .line 758
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "base_main_v1"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 760
    :cond_41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 761
    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 754
    :catch_4e
    move-exception v2

    goto :goto_29
.end method

.method private static showDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 443
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 444
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 445
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 446
    if-nez v0, :cond_18

    .line 490
    :goto_17
    return-void

    .line 449
    :cond_18
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    monitor-enter v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_3d

    move v2, v1

    .line 451
    :goto_1e
    :try_start_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4a

    .line 452
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    .line 453
    if-eqz v1, :cond_46

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->macKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 454
    monitor-exit v0

    goto :goto_17

    .line 482
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v1
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 487
    :catch_3d
    move-exception v0

    .line 488
    const-string v1, "xems_local"

    const-string v2, "showDiscovered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 451
    :cond_46
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1e

    .line 457
    :cond_4a
    :try_start_4a
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->knownDevice(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/DeviceBean;

    move-result-object v1

    .line 458
    if-nez v1, :cond_c8

    .line 459
    new-instance v1, Lcom/isaigu/gymapp/bean/DeviceBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/DeviceBean;-><init>()V

    .line 460
    iput-object p1, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    .line 461
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->displayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->id:Ljava/lang/Long;

    .line 466
    :cond_67
    :goto_67
    iput-object p2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->connectedSign:Ljava/lang/String;

    .line 467
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_3a

    .line 471
    :try_start_6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "selects"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 472
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 473
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 474
    if-eqz v1, :cond_93

    .line 475
    :goto_82
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_93

    .line 476
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6c .. :try_end_91} :catch_92
    .catchall {:try_start_6c .. :try_end_91} :catchall_3a

    goto :goto_82

    .line 479
    :catch_92
    move-exception v1

    .line 482
    :cond_93
    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_3a

    .line 483
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

    .line 484
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

    .line 485
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 486
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_c6} :catch_3d

    goto/16 :goto_17

    .line 463
    :cond_c8
    :try_start_c8
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    if-eqz v2, :cond_d6

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/DeviceBean;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 464
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
    .line 611
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 612
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    if-nez v1, :cond_f

    .line 613
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    .line 615
    :cond_f
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_29

    .line 616
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->nextProgramId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 618
    :cond_29
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 619
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->savePrograms()V

    .line 620
    return-void
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1215
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method
