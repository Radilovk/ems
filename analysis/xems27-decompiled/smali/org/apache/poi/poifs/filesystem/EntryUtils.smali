.class public Lorg/apache/poi/poifs/filesystem/EntryUtils;
.super Ljava/lang/Object;
.source "EntryUtils.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areDirectoriesIdentical(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)Z
    .locals 8
    .param p0, "dirA"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "dirB"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 162
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 163
    return v1

    .line 167
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryCount()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryCount()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 168
    return v1

    .line 172
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "aSizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v2, -0x3039

    .line 174
    .local v2, "isDirectory":I
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 175
    .local v4, "a":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "aName":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 177
    const/16 v6, -0x3039

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :cond_2
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v4    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v5    # "aName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 182
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 183
    .local v4, "b":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "bName":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 186
    return v1

    .line 190
    :cond_4
    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 191
    const/16 v6, -0x3039

    .local v6, "size":I
    goto :goto_3

    .line 193
    .end local v6    # "size":I
    :cond_5
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result v6

    .line 195
    .restart local v6    # "size":I
    :goto_3
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 197
    return v1

    .line 201
    :cond_6
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v4    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v5    # "bName":Ljava/lang/String;
    .end local v6    # "size":I
    goto :goto_2

    .line 203
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 205
    return v1

    .line 209
    :cond_8
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 211
    .local v4, "a":Lorg/apache/poi/poifs/filesystem/Entry;
    :try_start_0
    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v5

    .line 213
    .local v5, "b":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 214
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-object v7, v5

    check-cast v7, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-static {v6, v7}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->areDirectoriesIdentical(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)Z

    move-result v6

    .local v6, "match":Z
    goto :goto_5

    .line 217
    .end local v6    # "match":Z
    :cond_9
    move-object v6, v4

    check-cast v6, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-object v7, v5

    check-cast v7, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-static {v6, v7}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->areDocumentsIdentical(Lorg/apache/poi/poifs/filesystem/DocumentEntry;Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .restart local v6    # "match":Z
    :goto_5
    if-nez v6, :cond_a

    return v1

    .line 227
    .end local v5    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v6    # "match":Z
    :cond_a
    nop

    .line 228
    .end local v4    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    goto :goto_4

    .line 224
    .restart local v4    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    :catch_0
    move-exception v5

    .line 226
    .local v5, "e":Ljava/io/IOException;
    return v1

    .line 221
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 223
    .local v5, "e":Ljava/io/FileNotFoundException;
    return v1

    .line 231
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public static areDocumentsIdentical(Lorg/apache/poi/poifs/filesystem/DocumentEntry;Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Z
    .locals 6
    .param p0, "docA"    # Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .param p1, "docB"    # Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 242
    return v1

    .line 244
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 246
    return v1

    .line 249
    :cond_1
    const/4 v0, 0x1

    .line 250
    .local v0, "matches":Z
    const/4 v1, 0x0

    .local v1, "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    const/4 v2, 0x0

    .line 252
    .local v2, "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :try_start_0
    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v3, p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    move-object v1, v3

    .line 253
    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v3, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    move-object v2, v3

    .line 257
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read()I

    move-result v3

    .line 258
    .local v3, "readA":I
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .local v4, "readB":I
    if-eq v3, v4, :cond_3

    .line 260
    const/4 v0, 0x0

    .line 261
    goto :goto_0

    .line 263
    :cond_3
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    if-ne v4, v5, :cond_2

    .line 265
    .end local v3    # "readA":I
    .end local v4    # "readB":I
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 266
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 269
    return v0

    .line 265
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 266
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_6
    throw v3
.end method

.method public static copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 4
    .param p0, "entry"    # Lorg/apache/poi/poifs/filesystem/Entry;
    .param p1, "target"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "newTarget":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    move-object v1, p0

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 45
    .local v1, "dirEntry":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v0

    .line 46
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 47
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v2

    .line 49
    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-static {v3, v0}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    goto :goto_0

    .line 53
    .end local v1    # "dirEntry":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .end local v2    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_0
    goto :goto_1

    .line 56
    :cond_1
    move-object v1, p0

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 57
    .local v1, "dentry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    .line 58
    .local v2, "dstream":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 59
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 61
    .end local v1    # "dentry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .end local v2    # "dstream":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :goto_1
    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 2
    .param p0, "sourceRoot"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "targetRoot"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 75
    .local v1, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-static {v1, p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 76
    .end local v1    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    goto :goto_0

    .line 77
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/List;)V
    .locals 3
    .param p0, "sourceRoot"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "targetRoot"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/DirectoryEntry;",
            "Lorg/apache/poi/poifs/filesystem/DirectoryEntry;",
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

    .line 108
    .local p2, "excepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 112
    .local v1, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-static {v1, p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 116
    .end local v1    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)V
    .locals 0
    .param p0, "filteredSource"    # Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;
    .param p1, "filteredTarget"    # Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {p0, p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 91
    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 2
    .param p0, "source"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p1, "target"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 131
    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V
    .locals 3
    .param p0, "source"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p1, "target"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
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

    .line 146
    .local p2, "excepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    new-instance v1, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)V

    .line 150
    return-void
.end method
