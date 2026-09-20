.class final Lcom/isaigu/gymapp/dialog/BlockProgramStorage;
.super Ljava/lang/Object;
.source "BlockProgramStorage.java"


# static fields
.field private static final KEY_BLOCKS:Ljava/lang/String; = "block_program_blocks"

.field private static final KEY_BLOCK_MODE:Ljava/lang/String; = "block_program_mode"

.field private static final KEY_REPEAT:Ljava/lang/String; = "block_program_repeat"

.field private static final PREFS:Ljava/lang/String; = "interval_timer"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadBlockMode(Landroid/content/Context;)Z
    .registers 3

    .line 19
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "block_program_mode"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static loadBlocks(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "block_program_blocks"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_3e

    .line 32
    :cond_1a
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 33
    const/4 v1, 0x0

    :goto_21
    array-length v2, p0

    if-ge v1, v2, :cond_3d

    .line 34
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_31

    .line 35
    goto :goto_3a

    .line 37
    :cond_31
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 39
    :cond_3d
    return-object v0

    .line 30
    :cond_3e
    :goto_3e
    return-object v0
.end method

.method static loadRepeat(Landroid/content/Context;)Z
    .registers 3

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "block_program_repeat"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 68
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 69
    :goto_9
    const/4 v1, 0x0

    const-string v2, "interval_timer"

    if-nez v0, :cond_13

    .line 70
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 72
    :cond_13
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static save(Landroid/content/Context;ZZLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;)V"
        }
    .end annotation

    .line 43
    if-nez p0, :cond_3

    .line 44
    return-void

    .line 46
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 47
    const-string v0, "block_program_mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    const-string p1, "block_program_repeat"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-static {p3}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->serializeBlocks(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "block_program_blocks"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    return-void
.end method

.method static serializeBlocks(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 54
    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_31

    .line 57
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 59
    if-lez v1, :cond_1c

    .line 60
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :cond_1c
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 64
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_31
    :goto_31
    const-string p0, ""

    return-object p0
.end method
