.class public Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;
.super Ljava/lang/Object;
.source "HSSFEventFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    .locals 3
    .param p1, "req"    # Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    .line 150
    .local v0, "userCode":S
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 154
    .local v1, "recordStream":Lorg/apache/poi/hssf/record/RecordFactoryInputStream;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->nextRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    .line 155
    .local v2, "r":Lorg/apache/poi/hssf/record/Record;
    if-nez v2, :cond_0

    .line 156
    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->processRecord(Lorg/apache/poi/hssf/record/Record;)S

    move-result v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    nop

    .line 165
    .end local v2    # "r":Lorg/apache/poi/hssf/record/Record;
    :goto_1
    return v0

    .line 162
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method public abortableProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    .locals 1
    .param p1, "req"    # Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S

    move-result v0

    return v0
.end method

.method public abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)S
    .locals 2
    .param p1, "req"    # Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    .param p2, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;
        }
    .end annotation

    .line 100
    const-string v0, "Workbook"

    invoke-virtual {p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    .line 101
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->abortableProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S

    move-result v1

    return v1
.end method

.method public abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)S
    .locals 1
    .param p1, "req"    # Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    .param p2, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hssf/eventusermodel/HSSFUserException;
        }
    .end annotation

    .line 88
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)S

    move-result v0

    return v0
.end method

.method public processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "req"    # Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    .param p2, "in"    # Ljava/io/InputStream;

    .line 117
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    :try_end_0
    .catch Lorg/apache/poi/hssf/eventusermodel/HSSFUserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 121
    :goto_0
    return-void
.end method

.method public processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 3
    .param p1, "req"    # Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    .param p2, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryNames()Ljava/util/Set;

    move-result-object v0

    .line 64
    .local v0, "entryNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "Workbook"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "Workbook"

    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, "WORKBOOK"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "WORKBOOK"

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v1, "BOOK"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    const-string v1, "BOOK"

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string v1, "Workbook"

    .line 74
    .restart local v1    # "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    .line 76
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V

    .line 77
    return-void
.end method

.method public processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "req"    # Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    .param p2, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 52
    return-void
.end method
