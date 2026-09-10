.class public abstract Lorg/apache/poi/POIDocument;
.super Ljava/lang/Object;
.source "POIDocument.java"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

.field private initialized:Z

.field private sInf:Lorg/apache/poi/hpsf/SummaryInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/apache/poi/POIDocument;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    .line 71
    iput-object p1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 72
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    .line 79
    iput-object p1, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 80
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .prologue
    .line 87
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 0
    .param p1, "entry"    # Lorg/apache/poi/poifs/filesystem/Entry;
    .param p2, "target"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .prologue
    .line 340
    invoke-static {p1, p2}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 341
    return-void
.end method

.method protected copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/util/List;)V
    .locals 0
    .param p1, "sourceRoot"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "targetRoot"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/DirectoryNode;",
            "Lorg/apache/poi/poifs/filesystem/DirectoryNode;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    .local p3, "excepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/List;)V

    .line 323
    return-void
.end method

.method protected copyNodes(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    .locals 0
    .param p1, "source"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p2, "target"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    .local p3, "excepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    .line 306
    return-void
.end method

.method public createInformationProperties()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    if-nez v0, :cond_1

    .line 124
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    .line 129
    :cond_2
    return-void
.end method

.method public getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    return-object v0
.end method

.method protected getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 1
    .param p1, "setName"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 12
    .param p1, "setName"    # Ljava/lang/String;
    .param p2, "encryptionInfo"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .prologue
    const/4 v11, 0x5

    const/4 v7, 0x0

    .line 180
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 182
    .local v0, "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    if-eqz p2, :cond_0

    .line 184
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v8, v9}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v5

    .line 185
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v6, v5}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 186
    .local v6, "poifs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 187
    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "poifs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 219
    :cond_1
    :goto_0
    return-object v7

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v9, 0x7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting encrypted property set with name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 210
    .local v1, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :try_start_2
    invoke-static {v1}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/poi/hpsf/HPSFException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v7

    .line 211
    .local v7, "set":Lorg/apache/poi/hpsf/PropertySet;
    goto :goto_0

    .line 202
    .end local v1    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v7    # "set":Lorg/apache/poi/hpsf/PropertySet;
    :catch_1
    move-exception v4

    .line 204
    .local v4, "ie":Ljava/io/IOException;
    sget-object v8, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error getting property set with name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_0

    .line 212
    .end local v4    # "ie":Ljava/io/IOException;
    .restart local v1    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :catch_2
    move-exception v4

    .line 214
    .restart local v4    # "ie":Ljava/io/IOException;
    sget-object v8, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error creating property set with name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_0

    .line 215
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 217
    .local v3, "he":Lorg/apache/poi/hpsf/HPSFException;
    sget-object v8, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error creating property set with name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->readProperties()V

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    return-object v0
.end method

.method protected readProperties()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 141
    const-string v1, "\u0005DocumentSummaryInformation"

    invoke-virtual {p0, v1}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v0

    .line 142
    .local v0, "ps":Lorg/apache/poi/hpsf/PropertySet;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    if-eqz v1, :cond_2

    .line 143
    check-cast v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    .end local v0    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    iput-object v0, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    .line 149
    :cond_0
    :goto_0
    const-string v1, "\u0005SummaryInformation"

    invoke-virtual {p0, v1}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v0

    .line 150
    .restart local v0    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    instance-of v1, v0, Lorg/apache/poi/hpsf/SummaryInformation;

    if-eqz v1, :cond_3

    .line 151
    check-cast v0, Lorg/apache/poi/hpsf/SummaryInformation;

    .end local v0    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    iput-object v0, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    .line 157
    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    .line 158
    return-void

    .line 144
    .restart local v0    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    :cond_2
    if-eqz v0, :cond_0

    .line 145
    sget-object v1, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const-string v2, "DocumentSummaryInformation property set came back with wrong class - "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_3
    if-eqz v0, :cond_1

    .line 153
    sget-object v1, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const-string v2, "SummaryInformation property set came back with wrong class - "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "outFS"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    .line 231
    return-void
.end method

.method protected writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    .locals 3
    .param p1, "outFS"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "writtenEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v1

    .line 242
    .local v1, "si":Lorg/apache/poi/hpsf/SummaryInformation;
    if-eqz v1, :cond_0

    .line 243
    const-string v2, "\u0005SummaryInformation"

    invoke-virtual {p0, v2, v1, p1}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 244
    if-eqz p2, :cond_0

    .line 245
    const-string v2, "\u0005SummaryInformation"

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    .line 249
    .local v0, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    if-eqz v0, :cond_1

    .line 250
    const-string v2, "\u0005DocumentSummaryInformation"

    invoke-virtual {p0, v2, v0, p1}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 251
    if-eqz p2, :cond_1

    .line 252
    const-string v2, "\u0005DocumentSummaryInformation"

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_1
    return-void
.end method

.method protected writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "set"    # Lorg/apache/poi/hpsf/PropertySet;
    .param p3, "outFS"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    new-instance v3, Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-direct {v3, p2}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 269
    .local v3, "mSet":Lorg/apache/poi/hpsf/MutablePropertySet;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v1}, Lorg/apache/poi/hpsf/MutablePropertySet;->write(Ljava/io/OutputStream;)V

    .line 272
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 273
    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 274
    .local v0, "bIn":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p3, v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 276
    sget-object v5, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrote property set "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v1    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v3    # "mSet":Lorg/apache/poi/hpsf/MutablePropertySet;
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v4

    .line 278
    .local v4, "wnse":Lorg/apache/poi/hpsf/WritingNotSupportedException;
    sget-object v5, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t write property set with name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as not supported by HPSF yet"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_0
.end method
