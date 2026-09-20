.class public final Lcom/isaigu/gymapp/dialog/MusicTrackLabel;
.super Ljava/lang/Object;
.source "MusicTrackLabel.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static filenameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 86
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4e

    .line 91
    :cond_d
    :try_start_d
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    .line 93
    goto :goto_15

    .line 92
    :catchall_14
    move-exception v1

    .line 94
    :goto_15
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 95
    if-ltz v1, :cond_29

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_29
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 99
    if-lez v1, :cond_36

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_36
    const/16 v1, 0x5f

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4d
    return-object v0

    .line 88
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    .line 59
    const-string v0, "_display_name"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    .line 60
    return-object v1

    .line 62
    :cond_6
    nop

    .line 64
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_38

    .line 70
    if-eqz p0, :cond_35

    :try_start_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 71
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 72
    if-ltz p1, :cond_35

    .line 73
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_33

    .line 78
    if-eqz p0, :cond_32

    .line 79
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_32
    return-object p1

    .line 76
    :catchall_33
    move-exception p1

    goto :goto_3a

    .line 78
    :cond_35
    if-eqz p0, :cond_3f

    .line 79
    goto :goto_3c

    .line 76
    :catchall_38
    move-exception p0

    move-object p0, v1

    .line 78
    :goto_3a
    if-eqz p0, :cond_3f

    .line 79
    :goto_3c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_3f
    return-object v1
.end method

.method private static readMetadata(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 32
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 34
    :try_start_5
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 35
    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    if-eqz p0, :cond_51

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_51

    .line 38
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4a

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2014 "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_6d

    .line 51
    :try_start_44
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    .line 53
    goto :goto_49

    .line 52
    :catchall_48
    move-exception p1

    .line 40
    :goto_49
    return-object p0

    .line 42
    :cond_4a
    nop

    .line 51
    :try_start_4b
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    .line 53
    goto :goto_50

    .line 52
    :catchall_4f
    move-exception p1

    .line 42
    :goto_50
    return-object p0

    .line 44
    :cond_51
    const/4 p0, 0x1

    :try_start_52
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    if-eqz p0, :cond_69

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_6d

    if-lez p1, :cond_69

    .line 46
    nop

    .line 51
    :try_start_63
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 53
    goto :goto_68

    .line 52
    :catchall_67
    move-exception p1

    .line 46
    :goto_68
    return-object p0

    .line 51
    :cond_69
    :try_start_69
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_71

    .line 48
    :catchall_6d
    move-exception p0

    .line 51
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_72

    .line 53
    :goto_71
    goto :goto_74

    .line 52
    :catchall_72
    move-exception p0

    .line 54
    nop

    .line 55
    :goto_74
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 17
    if-nez p1, :cond_5

    .line 18
    const-string p0, ""

    return-object p0

    .line 20
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->readMetadata(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 22
    return-object v0

    .line 24
    :cond_12
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->readDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 25
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 26
    return-object p0

    .line 28
    :cond_1f
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->filenameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 107
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 108
    return-object v0

    .line 110
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    move-object v0, p0

    :cond_f
    return-object v0
.end method
