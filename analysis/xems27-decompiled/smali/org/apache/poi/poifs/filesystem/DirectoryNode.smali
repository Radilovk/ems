.class public Lorg/apache/poi/poifs/filesystem/DirectoryNode;
.super Lorg/apache/poi/poifs/filesystem/EntryNode;
.source "DirectoryNode.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/poifs/filesystem/EntryNode;",
        "Lorg/apache/poi/poifs/filesystem/DirectoryEntry;",
        "Lorg/apache/poi/poifs/dev/POIFSViewable;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/poifs/filesystem/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private _byname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private _entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private _nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

.field private _ofilesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

.field private _path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 6
    .param p1, "property"    # Lorg/apache/poi/poifs/property/DirectoryProperty;
    .param p2, "parent"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p3, "ofilesystem"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p4, "nfilesystem"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/EntryNode;-><init>(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 98
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .line 99
    iput-object p4, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .line 101
    if-nez p2, :cond_0

    .line 103
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iget-object v1, p2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 112
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/property/Property;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/Property;

    .line 119
    .local v1, "child":Lorg/apache/poi/poifs/property/Property;
    const/4 v2, 0x0

    .line 121
    .local v2, "childNode":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    move-object v3, v1

    check-cast v3, Lorg/apache/poi/poifs/property/DirectoryProperty;

    .line 124
    .local v3, "childDir":Lorg/apache/poi/poifs/property/DirectoryProperty;
    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    if-eqz v4, :cond_1

    .line 125
    new-instance v5, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-direct {v5, v3, v4, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    move-object v2, v5

    goto :goto_2

    .line 127
    :cond_1
    new-instance v4, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v4, v3, v5, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    move-object v2, v4

    .line 129
    .end local v3    # "childDir":Lorg/apache/poi/poifs/property/DirectoryProperty;
    :goto_2
    goto :goto_3

    .line 132
    :cond_2
    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    move-object v4, v1

    check-cast v4, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    move-object v2, v3

    .line 134
    :goto_3
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v2}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v1    # "child":Lorg/apache/poi/poifs/property/Property;
    .end local v2    # "childNode":Lorg/apache/poi/poifs/filesystem/Entry;
    goto :goto_1

    .line 137
    :cond_3
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/poi/poifs/property/DirectoryProperty;
    .param p2, "nfilesystem"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p3, "parent"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 89
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {p0, p1, p3, v0, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 90
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/poi/poifs/property/DirectoryProperty;
    .param p2, "filesystem"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p3, "parent"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 74
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 75
    return-void
.end method


# virtual methods
.method changeName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "rval":Z
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/EntryNode;

    .line 263
    .local v1, "child":Lorg/apache/poi/poifs/filesystem/EntryNode;
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/apache/poi/poifs/property/DirectoryProperty;->changeName(Lorg/apache/poi/poifs/property/Property;Ljava/lang/String;)Z

    move-result v0

    .line 267
    if-eqz v0, :cond_0

    .line 269
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    new-instance v0, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "property":Lorg/apache/poi/poifs/property/DirectoryProperty;
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    if-eqz v1, :cond_0

    .line 458
    new-instance v2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-direct {v2, v0, v1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    move-object v1, v2

    .line 459
    .local v1, "rval":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    goto :goto_0

    .line 461
    .end local v1    # "rval":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :cond_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 462
    .restart local v1    # "rval":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    .line 465
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    .line 466
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-object v1
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "writer"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    if-eqz v0, :cond_0

    .line 435
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {v1, p1, p2, v0, p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    return-object v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    if-eqz v0, :cond_0

    .line 412
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {v1, p1, v0, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    return-object v0
.end method

.method createDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 4
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object v0

    .line 240
    .local v0, "property":Lorg/apache/poi/poifs/property/DocumentProperty;
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 242
    .local v1, "rval":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    .line 243
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->addDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V

    .line 245
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-object v1
.end method

.method createDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 4
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object v0

    .line 217
    .local v0, "property":Lorg/apache/poi/poifs/property/DocumentProperty;
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 219
    .local v1, "rval":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    .line 220
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->addDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V

    .line 222
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-object v1
.end method

.method public createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 1
    .param p1, "documentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 3
    .param p1, "document"    # Lorg/apache/poi/poifs/filesystem/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->isDocumentEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 201
    .local v0, "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    return-object v1

    .line 196
    .end local v0    # "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a DocumentEntry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method deleteEntry(Lorg/apache/poi/poifs/filesystem/EntryNode;)Z
    .locals 3
    .param p1, "entry"    # Lorg/apache/poi/poifs/filesystem/EntryNode;

    .line 286
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->deleteChild(Lorg/apache/poi/poifs/property/Property;)Z

    move-result v0

    .line 290
    .local v0, "rval":Z
    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V

    goto :goto_0

    .line 299
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    .line 305
    :cond_1
    :goto_0
    return v0
.end method

.method public getEntries()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, "rval":Lorg/apache/poi/poifs/filesystem/Entry;
    if-eqz p1, :cond_0

    .line 385
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 387
    :cond_0
    if-eqz v0, :cond_1

    .line 392
    return-object v0

    .line 389
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such entry: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", had: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEntryCount()I
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEntryNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    return-object v0
.end method

.method public getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    return-object v0
.end method

.method public getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 582
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageClsid()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    .line 537
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 553
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 557
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public hasEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 366
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isDeleteOK()Z
    .locals 1

    .line 522
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isDirectoryEntry()Z
    .locals 1

    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntries()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preferArray()Z
    .locals 1

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 1
    .param p1, "clsidStorage"    # Lorg/apache/poi/hpsf/ClassID;

    .line 488
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/Property;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 489
    return-void
.end method
