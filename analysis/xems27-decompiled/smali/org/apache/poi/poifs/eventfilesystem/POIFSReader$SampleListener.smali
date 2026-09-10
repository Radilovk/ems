.class Lorg/apache/poi/poifs/eventfilesystem/POIFSReader$SampleListener;
.super Ljava/lang/Object;
.source "POIFSReader.java"

# interfaces
.implements Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/eventfilesystem/POIFSReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method


# virtual methods
.method public processPOIFSReaderEvent(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V
    .locals 9
    .param p1, "event"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;

    .line 306
    invoke-virtual {p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    .line 307
    .local v0, "istream":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    move-result-object v1

    .line 308
    .local v1, "path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getName()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 314
    .local v3, "data":[B
    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([B)I

    .line 315
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .local v4, "pathLength":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    const-string v6, "/"

    if-ge v5, v4, :cond_0

    .line 319
    :try_start_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->getComponent(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 321
    .end local v5    # "k":I
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes read"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    .end local v3    # "data":[B
    .end local v4    # "pathLength":I
    goto :goto_1

    .line 324
    :catch_0
    move-exception v3

    .line 327
    :goto_1
    return-void
.end method
