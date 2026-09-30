.class public final Lcom/isaigu/gymapp/ai/AutoHistory;
.super Ljava/lang/Object;
.source "AutoHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoHistory$Info;
    }
.end annotation


# static fields
.field static final MIN_SESSION_S:J = 0x12cL

.field static final PREFS:Ljava/lang/String; = "xems_auto_history"

.field static final TEMPLATE_PREFS:Ljava/lang/String; = "xems_auto_templates"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cardioMachine(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 100
    if-eqz p0, :cond_14

    :try_start_4
    const-string v2, "xems_auto_templates"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "machine"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_17

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    move v0, v1

    :cond_15
    move v1, v0

    .line 102
    :goto_16
    return v1

    .line 101
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public static hoursSince(JJ)D
    .registers 8

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_14

    cmp-long v0, p2, p0

    if-ltz v0, :cond_14

    sub-long v0, p2, p0

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    :goto_13
    return-wide v0

    :cond_14
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_13
.end method

.method public static of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;
    .registers 16

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 30
    new-instance v8, Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/AutoHistory$Info;-><init>()V

    .line 34
    :try_start_8
    const-string v0, "com.isaigu.gymapp.widget.XemsLocalApi"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    const-string v1, "allRecords"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_b8

    .line 39
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2c} :catch_65

    move-result-object v9

    move-wide v2, v4

    move v6, v7

    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 40
    instance-of v1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    if-eqz v1, :cond_2f

    .line 43
    check-cast v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    .line 44
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->userId:Ljava/lang/Long;

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->userId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v1, v10, p1

    if-nez v1, :cond_2f

    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 48
    iget v1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->hz:I

    const/16 v10, 0x14

    if-lt v1, v10, :cond_b4

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->createTime:Ljava/util/Date;

    if-eqz v1, :cond_b4

    .line 49
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->createTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_62} :catch_b2

    move-result-wide v0

    :goto_63
    move-wide v2, v0

    .line 51
    goto :goto_2f

    .line 53
    :catch_65
    move-exception v0

    move-wide v2, v4

    move v6, v7

    :goto_68
    move v0, v6

    .line 57
    :goto_69
    if-eqz p0, :cond_a3

    .line 59
    :try_start_6b
    const-string v1, "xems_auto_history"

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "a"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v10, 0x0

    invoke-interface {v1, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_a2} :catch_b0

    move-result-wide v4

    .line 65
    :cond_a3
    :goto_a3
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v8, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    .line 66
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->lastActiveMs:J

    .line 67
    return-object v8

    .line 62
    :catch_b0
    move-exception v1

    goto :goto_a3

    .line 53
    :catch_b2
    move-exception v0

    goto :goto_68

    :cond_b4
    move-wide v0, v2

    goto :goto_63

    :cond_b6
    move v0, v6

    goto :goto_69

    :cond_b8
    move-wide v2, v4

    move v0, v7

    goto :goto_69
.end method

.method public static outcomes(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 117
    if-eqz p0, :cond_9

    if-nez p3, :cond_b

    :cond_9
    move-object v2, v9

    .line 132
    :goto_a
    return-object v2

    .line 121
    :cond_b
    :try_start_b
    const-string v2, "xems_auto_templates"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 122
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v2, 0x0

    move v10, v2

    :goto_42
    if-ge v10, v12, :cond_7b

    aget-object v2, v11, v10

    .line 124
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 125
    array-length v2, v8

    const/4 v3, 0x4

    if-ne v2, v3, :cond_76

    .line 126
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    const/4 v3, 0x0

    aget-object v3, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x2

    aget-object v6, v8, v6

    .line 127
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v13, "1"

    const/4 v14, 0x3

    aget-object v8, v8, v14

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;-><init>(IDDZ)V

    .line 126
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_76} :catch_7a

    .line 123
    :cond_76
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_42

    .line 130
    :catch_7a
    move-exception v2

    :cond_7b
    move-object v2, v9

    .line 132
    goto :goto_a
.end method

.method public static record(Landroid/content/Context;JZDJ)V
    .registers 15

    .prologue
    .line 76
    if-eqz p0, :cond_b

    const-wide v0, 0x4072c00000000000L    # 300.0

    cmpg-double v0, p4, v0

    if-gez v0, :cond_c

    .line 91
    :cond_b
    :goto_b
    return-void

    .line 80
    :cond_c
    :try_start_c
    const-string v0, "xems_auto_history"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v1

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    if-eqz p3, :cond_69

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p6, p7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 88
    :cond_69
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_6c} :catch_6d

    goto :goto_b

    .line 89
    :catch_6d
    move-exception v0

    goto :goto_b
.end method

.method public static remember(Landroid/content/Context;JLjava/lang/String;Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;)V
    .registers 16

    .prologue
    .line 137
    if-eqz p0, :cond_6

    if-eqz p3, :cond_6

    if-nez p4, :cond_7

    .line 158
    :cond_6
    :goto_6
    return-void

    .line 141
    :cond_7
    :try_start_7
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoHistory;->outcomes(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1c

    .line 144
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_e

    .line 156
    :catch_1a
    move-exception v0

    goto :goto_6

    .line 146
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3c

    .line 149
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :cond_3c
    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->level:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->done:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->cut:D

    .line 152
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->hrOver:Z

    if-eqz v0, :cond_8d

    const/4 v0, 0x1

    :goto_89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_8d
    const/4 v0, 0x0

    goto :goto_89

    .line 154
    :cond_8f
    const-string v0, "xems_auto_templates"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c2} :catch_1a

    goto/16 :goto_6
.end method

.method public static setCardioMachine(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 108
    :try_start_1
    const-string v1, "xems_auto_templates"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "machine"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_1b

    .line 111
    :goto_15
    if-nez p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 112
    return-void

    .line 109
    :catch_1b
    move-exception v1

    goto :goto_15
.end method
