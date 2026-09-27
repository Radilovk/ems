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


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
