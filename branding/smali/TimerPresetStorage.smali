.class final Lcom/isaigu/gymapp/dialog/TimerPresetStorage;
.super Ljava/lang/Object;
.source "TimerPresetStorage.java"


# static fields
.field private static final KEY_PRESETS:Ljava/lang/String; = "timer_presets_v1"

.field private static final PREFS:Ljava/lang/String; = "interval_timer"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static delete(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 65
    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2f

    .line 68
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->loadAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_2b

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 74
    :cond_2b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->saveAll(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 75
    return-void

    .line 66
    :cond_2f
    :goto_2f
    return-void
.end method

.method static findById(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 6

    .line 32
    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2a

    .line 35
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->loadAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    .line 36
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 38
    if-eqz v2, :cond_26

    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 39
    return-object v2

    .line 36
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 42
    :cond_29
    return-object v0

    .line 33
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method static loadAll(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/TimerPreset;",
            ">;"
        }
    .end annotation

    .line 17
    if-nez p0, :cond_8

    .line 18
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 20
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "timer_presets_v1"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->splitRecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static newId()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 82
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 83
    :goto_9
    const/4 v1, 0x0

    const-string v2, "interval_timer"

    if-nez v0, :cond_13

    .line 84
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 86
    :cond_13
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static saveAll(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/TimerPreset;",
            ">;)V"
        }
    .end annotation

    .line 25
    if-nez p0, :cond_3

    .line 26
    return-void

    .line 28
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/TimerPreset;->joinRecords(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "timer_presets_v1"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    return-void
.end method

.method static upsert(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 7

    .line 46
    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    iget-object v0, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_48

    .line 49
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->loadAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    nop

    .line 51
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 52
    iget-object v3, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object v4, v4, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 53
    invoke-virtual {p1}, Lcom/isaigu/gymapp/dialog/TimerPreset;->copy()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    nop

    .line 55
    const/4 v1, 0x1

    goto :goto_3b

    .line 51
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 58
    :cond_3b
    :goto_3b
    if-nez v1, :cond_44

    .line 59
    invoke-virtual {p1}, Lcom/isaigu/gymapp/dialog/TimerPreset;->copy()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_44
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->saveAll(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 62
    return-void

    .line 47
    :cond_48
    :goto_48
    return-void
.end method
