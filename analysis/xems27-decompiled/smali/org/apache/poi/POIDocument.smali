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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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

    .line 305
    .local p3, "excepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    .line 306
    return-void
.end method

.method public createInformationProperties()V
    .locals 1

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

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertySet(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 9
    .param p1, "setName"    # Ljava/lang/String;
    .param p2, "encryptionInfo"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    const-string v0, "Error creating property set with name "

    const-string v1, "\n"

    .line 180
    iget-object v2, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 182
    .local v2, "dirNode":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 184
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v4, v5}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v4

    .line 185
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v5, v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 186
    .local v5, "poifs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 187
    invoke-virtual {v5}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 191
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "poifs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting encrypted property set with name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 190
    return-object v3

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v4, v3

    .line 195
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 201
    :cond_1
    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 206
    .local v4, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    nop

    .line 210
    :try_start_2
    invoke-static {v4}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/poi/hpsf/HPSFException; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    .local v0, "set":Lorg/apache/poi/hpsf/PropertySet;
    return-object v0

    .line 215
    .end local v0    # "set":Lorg/apache/poi/hpsf/PropertySet;
    :catch_1
    move-exception v6

    .line 217
    .local v6, "he":Lorg/apache/poi/hpsf/HPSFException;
    sget-object v7, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_1

    .line 212
    .end local v6    # "he":Lorg/apache/poi/hpsf/HPSFException;
    :catch_2
    move-exception v6

    .line 214
    .local v6, "ie":Ljava/io/IOException;
    sget-object v7, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 218
    .end local v6    # "ie":Ljava/io/IOException;
    nop

    .line 219
    :goto_1
    return-object v3

    .line 202
    .end local v4    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :catch_3
    move-exception v0

    .line 204
    .local v0, "ie":Ljava/io/IOException;
    .restart local v4    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    sget-object v6, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting property set with name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 205
    return-object v3

    .line 196
    .end local v0    # "ie":Ljava/io/IOException;
    .end local v4    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :cond_2
    :goto_2
    return-object v3
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

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

    .line 141
    const-string v0, "\u0005DocumentSummaryInformation"

    invoke-virtual {p0, v0}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v0

    .line 142
    .local v0, "ps":Lorg/apache/poi/hpsf/PropertySet;
    const/4 v1, 0x5

    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v0

    check-cast v2, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    iput-object v2, p0, Lorg/apache/poi/POIDocument;->dsInf:Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    goto :goto_0

    .line 144
    :cond_0
    if-eqz v0, :cond_1

    .line 145
    sget-object v2, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "DocumentSummaryInformation property set came back with wrong class - "

    invoke-virtual {v2, v1, v4, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 149
    :cond_1
    :goto_0
    const-string v2, "\u0005SummaryInformation"

    invoke-virtual {p0, v2}, Lorg/apache/poi/POIDocument;->getPropertySet(Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v0

    .line 150
    instance-of v2, v0, Lorg/apache/poi/hpsf/SummaryInformation;

    if-eqz v2, :cond_2

    .line 151
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hpsf/SummaryInformation;

    iput-object v1, p0, Lorg/apache/poi/POIDocument;->sInf:Lorg/apache/poi/hpsf/SummaryInformation;

    goto :goto_1

    .line 152
    :cond_2
    if-eqz v0, :cond_3

    .line 153
    sget-object v2, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "SummaryInformation property set came back with wrong class - "

    invoke-virtual {v2, v1, v4, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 157
    :cond_3
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/POIDocument;->initialized:Z

    .line 158
    return-void
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    .local p2, "writtenEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    .line 242
    .local v0, "si":Lorg/apache/poi/hpsf/SummaryInformation;
    if-eqz v0, :cond_0

    .line 243
    const-string v1, "\u0005SummaryInformation"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 244
    if-eqz p2, :cond_0

    .line 245
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v1

    .line 249
    .local v1, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    if-eqz v1, :cond_1

    .line 250
    const-string v2, "\u0005DocumentSummaryInformation"

    invoke-virtual {p0, v2, v1, p1}, Lorg/apache/poi/POIDocument;->writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 251
    if-eqz p2, :cond_1

    .line 252
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_1
    return-void
.end method

.method protected writePropertySet(Ljava/lang/String;Lorg/apache/poi/hpsf/PropertySet;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "set"    # Lorg/apache/poi/hpsf/PropertySet;
    .param p3, "outFS"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    :try_start_0
    new-instance v0, Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-direct {v0, p2}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 269
    .local v0, "mSet":Lorg/apache/poi/hpsf/MutablePropertySet;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/MutablePropertySet;->write(Ljava/io/OutputStream;)V

    .line 272
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 273
    .local v2, "data":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 274
    .local v3, "bIn":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p3, v3, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 276
    sget-object v4, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrote property set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " of size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0    # "mSet":Lorg/apache/poi/hpsf/MutablePropertySet;
    .end local v1    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v3    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "wnse":Lorg/apache/poi/hpsf/WritingNotSupportedException;
    sget-object v1, Lorg/apache/poi/POIDocument;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write property set with name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as not supported by HPSF yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 280
    .end local v0    # "wnse":Lorg/apache/poi/hpsf/WritingNotSupportedException;
    :goto_0
    return-void
.end method
