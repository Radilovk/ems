.class public Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;
.super Ljava/lang/Object;
.source "TempFile.java"

# interfaces
.implements Lorg/apache/poi/util/TempFileCreationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/TempFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFileCreationStrategy"
.end annotation


# instance fields
.field private dir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;-><init>(Ljava/io/File;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    .line 91
    return-void
.end method


# virtual methods
.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    const-string v1, "poi.keep.tmp.files"

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/io/File;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "poifiles"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 100
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/TempFile$DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    invoke-static {p1, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 108
    .local v0, "newFile":Ljava/io/File;
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 112
    :cond_1
    return-object v0
.end method
