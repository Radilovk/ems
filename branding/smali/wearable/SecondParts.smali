.class public final Lcom/isaigu/gymapp/wearable/SecondParts;
.super Ljava/lang/Object;
.source "SecondParts.java"


# static fields
.field private static final KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramDataBean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OWN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramDataBean;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final PREFS:Ljava/lang/String; = "xems_second_parts"

.field private static app:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I
    .registers 5

    .prologue
    .line 47
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    .line 48
    if-eqz v0, :cond_b

    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_a
.end method

.method public static get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 39
    sget-object v2, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v2

    .line 40
    if-eqz p0, :cond_18

    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 41
    :goto_e
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_16
    monitor-exit v2

    return-object v0

    :cond_18
    move-object v0, v1

    .line 40
    goto :goto_e

    :cond_1a
    move-object v0, v1

    .line 41
    goto :goto_16

    .line 42
    :catchall_1c
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private static parse(Ljava/lang/String;)[I
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    if-eqz p0, :cond_a

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move-object v0, v1

    .line 122
    :cond_b
    :goto_b
    return-object v0

    .line 115
    :cond_c
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 116
    array-length v0, v3

    new-array v0, v0, [I

    .line 117
    :goto_15
    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 118
    const/4 v4, 0x0

    const/16 v5, 0x64

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v0, v2
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2f} :catch_32

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 121
    :catch_32
    move-exception v0

    move-object v0, v1

    .line 122
    goto :goto_b
.end method

.method private static persist(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 70
    :try_start_1
    sget-object v3, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_39

    .line 71
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 73
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_36

    .line 74
    if-eqz v0, :cond_53

    const/16 v3, 0x3d

    :try_start_19
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 75
    :goto_1d
    if-lez v3, :cond_55

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 76
    :goto_25
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SecondParts;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 77
    if-eqz v4, :cond_35

    if-eqz v3, :cond_35

    const-string v0, "u"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_32} :catch_39

    move-result v0

    if-nez v0, :cond_57

    .line 103
    :cond_35
    :goto_35
    return-void

    .line 73
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v0
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_39} :catch_39

    .line 100
    :catch_39
    move-exception v0

    .line 101
    const-string v1, "manual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second parts save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 74
    :cond_53
    const/4 v3, -0x1

    goto :goto_1d

    :cond_55
    move-object v3, v0

    .line 75
    goto :goto_25

    .line 80
    :cond_57
    :try_start_57
    const-string v0, ""

    .line 81
    if-eqz v1, :cond_7b

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    :goto_60
    array-length v0, v1

    if-ge v2, v0, :cond_77

    .line 84
    if-lez v2, :cond_74

    const-string v0, ","

    :goto_67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v6, v1, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_60

    .line 84
    :cond_74
    const-string v0, ""

    goto :goto_67

    .line 86
    :cond_77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_7b
    const-string v2, ""

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 91
    if-nez v1, :cond_b9

    .line 92
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    :goto_94
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v1
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_97} :catch_39

    .line 97
    :try_start_97
    sget-object v2, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_97 .. :try_end_b4} :catchall_c5

    .line 99
    :try_start_b4
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->changed()V

    goto/16 :goto_35

    .line 94
    :cond_b9
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_c4} :catch_39

    goto :goto_94

    .line 98
    :catchall_c5
    move-exception v0

    :try_start_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v0
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_c8} :catch_39
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 127
    sget-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->app:Landroid/content/Context;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->app:Landroid/content/Context;

    const-string v1, "xems_second_parts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static raw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SecondParts;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_d

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public static set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V
    .registers 6

    .prologue
    .line 53
    if-nez p0, :cond_3

    .line 64
    :goto_2
    return-void

    .line 56
    :cond_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v1

    .line 57
    if-eqz p2, :cond_e

    :try_start_8
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 58
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_24

    .line 63
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SecondParts;->persist(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    goto :goto_2

    .line 60
    :cond_18
    :try_start_18
    sget-object v2, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 62
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0
.end method

.method static tick(Landroid/content/Context;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 135
    if-eqz p0, :cond_a

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->app:Landroid/content/Context;

    .line 138
    :cond_a
    if-nez p1, :cond_d

    .line 180
    :cond_c
    return-void

    :cond_d
    move v2, v3

    .line 141
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 143
    :try_start_14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 144
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    move-object v9, v1

    .line 145
    :goto_27
    if-nez v9, :cond_2f

    .line 141
    :cond_29
    :goto_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_2d
    move-object v9, v5

    .line 144
    goto :goto_27

    .line 148
    :cond_2f
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_49

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    move v4, v1

    :goto_3b
    move v8, v3

    .line 149
    :goto_3c
    const/4 v1, 0x4

    if-ge v8, v1, :cond_29

    .line 150
    invoke-static {v9, v8}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    .line 151
    if-nez v10, :cond_4b

    .line 149
    :cond_45
    :goto_45
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_3c

    :cond_49
    move v4, v3

    .line 148
    goto :goto_3b

    .line 154
    :cond_4b
    if-eqz v4, :cond_f6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v6, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v11, v9, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v6, v7, v11}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->key(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 155
    :goto_71
    if-eqz v4, :cond_fb

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->raw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 156
    :goto_78
    if-eqz v4, :cond_100

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 158
    :goto_92
    sget-object v11, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v11
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_95} :catch_db

    .line 159
    :try_start_95
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    monitor-exit v11
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_104

    .line 161
    :try_start_9e
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 164
    if-eqz v4, :cond_107

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/SecondParts;->parse(Ljava/lang/String;)[I

    move-result-object v1

    .line 165
    :goto_aa
    sget-object v7, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v7
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_ad} :catch_db

    .line 166
    :try_start_ad
    sget-object v11, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    invoke-interface {v11, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    if-eqz v1, :cond_109

    iget-object v6, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v6, :cond_109

    iget-object v6, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v6, :cond_109

    array-length v6, v1

    iget-object v11, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v11, v11, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v11, v11

    if-ne v6, v11, :cond_109

    iget-object v6, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 169
    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_109

    .line 170
    sget-object v6, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v6, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_d5
    monitor-exit v7

    goto/16 :goto_45

    :catchall_d8
    move-exception v0

    monitor-exit v7
    :try_end_da
    .catchall {:try_start_ad .. :try_end_da} :catchall_d8

    :try_start_da
    throw v0
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_db} :catch_db

    .line 176
    :catch_db
    move-exception v0

    .line 177
    const-string v1, "manual"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second parts tick: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 154
    :cond_f6
    :try_start_f6
    const-string v1, "-"

    move-object v6, v1

    goto/16 :goto_71

    .line 155
    :cond_fb
    const-string v1, ""

    move-object v7, v1

    goto/16 :goto_78

    .line 156
    :cond_100
    const-string v1, "-"
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_102} :catch_db

    move-object v6, v1

    goto :goto_92

    .line 160
    :catchall_104
    move-exception v0

    :try_start_105
    monitor-exit v11
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    :try_start_106
    throw v0
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_107} :catch_db

    :cond_107
    move-object v1, v5

    .line 164
    goto :goto_aa

    .line 172
    :cond_109
    :try_start_109
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10e
    .catchall {:try_start_109 .. :try_end_10e} :catchall_d8

    goto :goto_d5
.end method
