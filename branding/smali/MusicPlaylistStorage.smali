.class public final Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;
.super Ljava/lang/Object;
.source "MusicPlaylistStorage.java"


# static fields
.field private static final KEY_ENTRIES:Ljava/lang/String; = "entries"

.field private static final PREFS:Ljava/lang/String; = "music_playlist"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static load(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    if-nez p0, :cond_8

    .line 21
    return-object v0

    .line 23
    :cond_8
    const-string v1, "music_playlist"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 24
    const-string v1, "entries"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    if-eqz p0, :cond_69

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_69

    .line 28
    :cond_20
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 29
    const/4 v1, 0x0

    :goto_27
    array-length v3, p0

    if-ge v1, v3, :cond_68

    .line 30
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_37

    .line 32
    goto :goto_65

    .line 34
    :cond_37
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 35
    if-ltz v4, :cond_44

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_45

    :cond_44
    move-object v5, v3

    .line 36
    :goto_45
    if-ltz v4, :cond_54

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_54

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    .line 38
    :goto_55
    :try_start_55
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 39
    if-eqz v4, :cond_63

    .line 40
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    invoke-direct {v5, v4, v3}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_64

    .line 43
    :cond_63
    goto :goto_65

    .line 42
    :catchall_64
    move-exception v3

    .line 29
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 45
    :cond_68
    return-object v0

    .line 26
    :cond_69
    :goto_69
    return-object v0
.end method

.method public static save(Landroid/content/Context;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;",
            ">;)V"
        }
    .end annotation

    .line 49
    if-nez p0, :cond_3

    .line 50
    return-void

    .line 52
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const/4 v1, 0x0

    if-eqz p1, :cond_56

    .line 54
    const/4 v2, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 55
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 56
    if-eqz v3, :cond_53

    iget-object v4, v3, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    if-nez v4, :cond_1f

    .line 57
    goto :goto_53

    .line 59
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0xa

    if-lez v4, :cond_2a

    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :cond_2a
    iget-object v4, v3, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v4, v3, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    if-eqz v4, :cond_53

    iget-object v4, v3, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_53

    .line 64
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 68
    :cond_56
    const-string p1, "music_playlist"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "entries"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 71
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method
