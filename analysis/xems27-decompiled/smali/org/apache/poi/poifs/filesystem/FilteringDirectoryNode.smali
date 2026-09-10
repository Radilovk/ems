.class public Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;
.super Ljava/lang/Object;
.source "FilteringDirectoryNode.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/DirectoryEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;
    }
.end annotation


# instance fields
.field private childExcludes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

.field private excludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V
    .locals 7
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/DirectoryEntry;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "excludes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->excludes:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->childExcludes:Ljava/util/Map;

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "excl":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 71
    .local v2, "splitAt":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 73
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->excludes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "child":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "childExcl":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->childExcludes:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->childExcludes:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->childExcludes:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v1    # "excl":Ljava/lang/String;
    .end local v2    # "splitAt":I
    .end local v3    # "child":Ljava/lang/String;
    .end local v4    # "childExcl":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 84
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    .line 42
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    .line 42
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->excludes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;
    .param p1, "x1"    # Lorg/apache/poi/poifs/filesystem/Entry;

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->wrapEntry(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    return-object v0
.end method

.method private wrapEntry(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/Entry;
    .locals 4
    .param p1, "entry"    # Lorg/apache/poi/poifs/filesystem/Entry;

    .line 148
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->childExcludes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->childExcludes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    return-object v1

    .line 153
    :cond_0
    return-object p1
.end method


# virtual methods
.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    return-object v0
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "writer"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    return-object v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v0

    return-object v0
.end method

.method public delete()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->delete()Z

    move-result v0

    return v0
.end method

.method public getEntries()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;-><init>(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$1;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->excludes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    .line 145
    .local v0, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->wrapEntry(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    return-object v1

    .line 141
    .end local v0    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEntryCount()I
    .locals 4

    .line 109
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryCount()I

    move-result v0

    .line 110
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->excludes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, "excl":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v3, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    add-int/lit8 v0, v0, -0x1

    .line 114
    .end local v2    # "excl":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 115
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public getEntryNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->excludes:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 125
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    return-object v0
.end method

.method public getStorageClsid()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    return-object v0
.end method

.method public hasEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->excludes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectoryEntry()Z
    .locals 1

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public isDocumentEntry()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->getEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 105
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->getEntries()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->renameTo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 1
    .param p1, "clsidStorage"    # Lorg/apache/poi/hpsf/ClassID;

    .line 161
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 162
    return-void
.end method
