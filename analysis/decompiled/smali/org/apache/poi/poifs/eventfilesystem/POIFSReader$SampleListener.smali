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

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method


# virtual methods
.method public processPOIFSReaderEvent(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;)V
    .locals 9
    .param p1, "event"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;

    .prologue
    .line 306
    invoke-virtual {p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v1

    .line 307
    .local v1, "istream":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    move-result-object v4

    .line 308
    .local v4, "path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 314
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([B)I

    .line 315
    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result v5

    .line 317
    .local v5, "pathLength":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 319
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->getComponent(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "data":[B
    .end local v2    # "k":I
    .end local v5    # "pathLength":I
    :goto_1
    return-void

    .line 324
    :catch_0
    move-exception v6

    goto :goto_1
.end method
