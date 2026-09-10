.class public Lcom/isaigu/gymapp/utils/SoundPlayUtils;
.super Ljava/lang/Object;
.source "SoundPlayUtils.java"


# static fields
.field private static loadedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mSoundPlayer:Landroid/media/SoundPool;

.field private static soundPlayUtils:Lcom/isaigu/gymapp/utils/SoundPlayUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/isaigu/gymapp/utils/SoundPlayUtils;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->soundPlayUtils:Lcom/isaigu/gymapp/utils/SoundPlayUtils;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/SoundPlayUtils;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->soundPlayUtils:Lcom/isaigu/gymapp/utils/SoundPlayUtils;

    .line 31
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    .line 36
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->soundPlayUtils:Lcom/isaigu/gymapp/utils/SoundPlayUtils;

    return-object v0
.end method

.method public static load(I)V
    .locals 4
    .param p0, "resId"    # I

    .prologue
    .line 66
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v2, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 68
    .local v0, "soundId":I
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v0    # "soundId":I
    :cond_0
    return-void
.end method

.method public static load(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "soundId":I
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v0    # "soundId":I
    :cond_0
    return-void
.end method

.method public static varargs load([I)V
    .locals 7
    .param p0, "resId"    # [I

    .prologue
    .line 57
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    .line 58
    .local v0, "res":I
    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v5, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v0, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 60
    .local v1, "soundId":I
    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v1    # "soundId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "res":I
    :cond_1
    return-void
.end method

.method public static varargs load([Ljava/lang/String;)V
    .locals 6
    .param p0, "resId"    # [Ljava/lang/String;

    .prologue
    .line 73
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 74
    .local v0, "res":Ljava/lang/String;
    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, "soundId":I
    sget-object v4, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v1    # "soundId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "res":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static play(I)V
    .locals 7
    .param p0, "resId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 48
    :cond_0
    return-void
.end method

.method public static play(Ljava/lang/String;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 51
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 54
    :cond_0
    return-void
.end method

.method public static unload(I)V
    .locals 3
    .param p0, "resId"    # I

    .prologue
    .line 89
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 92
    :cond_0
    return-void
.end method

.method public static unload(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    sget-object v0, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 98
    :cond_0
    return-void
.end method

.method public static unloadAll()V
    .locals 4

    .prologue
    .line 101
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v3, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->mSoundPlayer:Landroid/media/SoundPool;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_0

    .line 104
    :cond_0
    sget-object v1, Lcom/isaigu/gymapp/utils/SoundPlayUtils;->loadedMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 105
    return-void
.end method
