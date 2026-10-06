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
    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effective(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I)[I
    .registers 5

    .prologue
    .line 45
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SecondParts;->get(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    .line 46
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

    .line 37
    sget-object v2, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v2

    .line 38
    if-eqz p0, :cond_18

    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 39
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

    .line 38
    goto :goto_e

    :cond_1a
    move-object v0, v1

    .line 39
    goto :goto_16

    .line 40
    :catchall_1c
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private static persist(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 8

    .prologue
    .line 68
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_28

    .line 69
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 71
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_25

    .line 72
    :try_start_14
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SecondParts;->prefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 73
    if-eqz v4, :cond_24

    if-eqz v0, :cond_24

    const-string v2, "u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_21} :catch_28

    move-result v2

    if-nez v2, :cond_42

    .line 88
    :cond_24
    :goto_24
    return-void

    .line 71
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v0
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_28} :catch_28

    .line 85
    :catch_28
    move-exception v0

    .line 86
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

    goto :goto_24

    .line 76
    :cond_42
    if-nez v1, :cond_50

    .line 77
    :try_start_44
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_24

    .line 79
    :cond_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const/4 v2, 0x0

    move v3, v2

    :goto_57
    array-length v2, v1

    if-ge v3, v2, :cond_6e

    .line 81
    if-lez v3, :cond_6b

    const-string v2, ","

    :goto_5e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v6, v1, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_57

    .line 81
    :cond_6b
    const-string v2, ""

    goto :goto_5e

    .line 83
    :cond_6e
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_7d} :catch_28

    goto :goto_24
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 109
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

.method private static read(Ljava/lang/String;)[I
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SecondParts;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_17

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_d
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_19

    :cond_15
    move-object v0, v1

    .line 104
    :cond_16
    :goto_16
    return-object v0

    :cond_17
    move-object v0, v1

    .line 93
    goto :goto_d

    .line 97
    :cond_19
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 98
    array-length v0, v3

    new-array v0, v0, [I

    .line 99
    :goto_22
    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 100
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
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3c} :catch_3f

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 103
    :catch_3f
    move-exception v0

    move-object v0, v1

    .line 104
    goto :goto_16
.end method

.method public static set(Lcom/isaigu/gymapp/bean/ProgramDataBean;[I[I)V
    .registers 6

    .prologue
    .line 51
    if-nez p0, :cond_3

    .line 62
    :goto_2
    return-void

    .line 54
    :cond_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v1

    .line 55
    if-eqz p2, :cond_e

    :try_start_8
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 56
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_24

    .line 61
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SecondParts;->persist(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    goto :goto_2

    .line 58
    :cond_18
    :try_start_18
    sget-object v2, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 60
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

    .line 117
    if-eqz p0, :cond_a

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/SecondParts;->app:Landroid/content/Context;

    .line 120
    :cond_a
    if-nez p1, :cond_d

    .line 160
    :cond_c
    return-void

    :cond_d
    move v2, v3

    .line 123
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 125
    :try_start_14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 126
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    move-object v8, v1

    .line 127
    :goto_27
    if-nez v8, :cond_2f

    .line 123
    :cond_29
    :goto_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_2d
    move-object v8, v5

    .line 126
    goto :goto_27

    .line 130
    :cond_2f
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_49

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    move v4, v1

    :goto_3b
    move v7, v3

    .line 131
    :goto_3c
    const/4 v1, 0x4

    if-ge v7, v1, :cond_29

    .line 132
    invoke-static {v8, v7}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v9

    .line 133
    if-nez v9, :cond_4b

    .line 131
    :cond_45
    :goto_45
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3c

    :cond_49
    move v4, v3

    .line 130
    goto :goto_3b

    .line 136
    :cond_4b
    if-eqz v4, :cond_d4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v10, v6, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v6, v8, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v10, v11, v6}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->key(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 138
    :goto_71
    sget-object v10, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v10
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_74} :catch_b9

    .line 139
    :try_start_74
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    monitor-exit v10
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_d8

    .line 141
    :try_start_7d
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 144
    if-eqz v4, :cond_db

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/SecondParts;->read(Ljava/lang/String;)[I

    move-result-object v1

    .line 145
    :goto_89
    sget-object v10, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    monitor-enter v10
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_8c} :catch_b9

    .line 146
    :try_start_8c
    sget-object v11, Lcom/isaigu/gymapp/wearable/SecondParts;->KEYS:Ljava/util/Map;

    invoke-interface {v11, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    if-eqz v1, :cond_dd

    iget-object v6, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v6, :cond_dd

    iget-object v6, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v6, :cond_dd

    array-length v6, v1

    iget-object v11, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v11, v11, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v11, v11

    if-ne v6, v11, :cond_dd

    iget-object v6, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 149
    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_dd

    .line 150
    sget-object v6, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v6, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :goto_b4
    monitor-exit v10

    goto :goto_45

    :catchall_b6
    move-exception v0

    monitor-exit v10
    :try_end_b8
    .catchall {:try_start_8c .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v0
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_b9} :catch_b9

    .line 156
    :catch_b9
    move-exception v0

    .line 157
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

    .line 136
    :cond_d4
    :try_start_d4
    const-string v1, "-"
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d6} :catch_b9

    move-object v6, v1

    goto :goto_71

    .line 140
    :catchall_d8
    move-exception v0

    :try_start_d9
    monitor-exit v10
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    :try_start_da
    throw v0
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_db} :catch_b9

    :cond_db
    move-object v1, v5

    .line 144
    goto :goto_89

    .line 152
    :cond_dd
    :try_start_dd
    sget-object v1, Lcom/isaigu/gymapp/wearable/SecondParts;->OWN:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e2
    .catchall {:try_start_dd .. :try_end_e2} :catchall_b6

    goto :goto_b4
.end method
