.class final Lcom/isaigu/gymapp/train/utils/MusicUriSource;
.super Ljava/lang/Object;
.source "MusicUriSource.java"


# instance fields
.field private assetFd:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    .line 17
    return-void
.end method

.method static open(Landroid/content/Context;Landroid/net/Uri;)Lcom/isaigu/gymapp/train/utils/MusicUriSource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    if-eqz p0, :cond_43

    if-eqz p1, :cond_43

    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_3c

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3c

    .line 27
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 28
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 29
    if-eqz p0, :cond_25

    .line 32
    new-instance p1, Lcom/isaigu/gymapp/train/utils/MusicUriSource;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object p1

    .line 30
    :cond_25
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_3c
    :goto_3c
    new-instance p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicUriSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object p0

    .line 21
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "missing context or uri"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method close()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_5

    .line 55
    return-void

    .line 58
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 60
    goto :goto_a

    .line 59
    :catchall_9
    move-exception v0

    .line 61
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    .line 62
    return-void
.end method

.method setExtractorDataSource(Landroid/media/MediaExtractor;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_19

    .line 37
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 38
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 39
    return-void

    .line 41
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 42
    return-void
.end method

.method setPlayerDataSource(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_19

    .line 46
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 47
    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    iget-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicUriSource;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 48
    return-void

    .line 50
    :cond_19
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 51
    return-void
.end method
