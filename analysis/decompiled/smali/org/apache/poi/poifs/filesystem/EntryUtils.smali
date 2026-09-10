.class public Lorg/apache/poi/poifs/filesystem/EntryUtils;
.super Ljava/lang/Object;
.source "EntryUtils.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areDirectoriesIdentical(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)Z
    .locals 13
    .param p0, "dirA"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "dirB"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .prologue
    const/4 v11, 0x0

    .line 162
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move v10, v11

    .line 231
    :goto_0
    return v10

    .line 167
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryCount()I

    move-result v10

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntryCount()I

    move-result v12

    if-eq v10, v12, :cond_1

    move v10, v11

    .line 168
    goto :goto_0

    .line 172
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v2, "aSizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v7, -0x3039

    .line 174
    .local v7, "isDirectory":I
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 175
    .local v0, "a":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "aName":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 177
    const/16 v10, -0x3039

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :cond_2
    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .end local v0    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 182
    .end local v1    # "aName":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 183
    .local v3, "b":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v3}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "bName":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v11

    .line 186
    goto :goto_0

    .line 190
    :cond_4
    invoke-interface {v3}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 191
    const/16 v9, -0x3039

    .line 195
    .end local v3    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    .local v9, "size":I
    :goto_3
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_6

    move v10, v11

    .line 197
    goto :goto_0

    .line 193
    .end local v9    # "size":I
    .restart local v3    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_5
    check-cast v3, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .end local v3    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getSize()I

    move-result v9

    .restart local v9    # "size":I
    goto :goto_3

    .line 201
    :cond_6
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 203
    .end local v4    # "bName":Ljava/lang/String;
    .end local v9    # "size":I
    :cond_7
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    move v10, v11

    .line 205
    goto/16 :goto_0

    .line 209
    :cond_8
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 211
    .restart local v0    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v3

    .line 213
    .restart local v3    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 214
    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .end local v0    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    check-cast v3, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .end local v3    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-static {v0, v3}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->areDirectoriesIdentical(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)Z

    move-result v8

    .line 220
    .local v8, "match":Z
    :goto_4
    if-nez v8, :cond_9

    move v10, v11

    goto/16 :goto_0

    .line 217
    .end local v8    # "match":Z
    .restart local v0    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    .restart local v3    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_a
    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .end local v0    # "a":Lorg/apache/poi/poifs/filesystem/Entry;
    check-cast v3, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .end local v3    # "b":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-static {v0, v3}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->areDocumentsIdentical(Lorg/apache/poi/poifs/filesystem/DocumentEntry;Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .restart local v8    # "match":Z
    goto :goto_4

    .line 221
    .end local v8    # "match":Z
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    move v10, v11

    .line 223
    goto/16 :goto_0

    .line 224
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move v10, v11

    .line 226
    goto/16 :goto_0

    .line 231
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public static areDocumentsIdentical(Lorg/apache/poi/poifs/filesystem/DocumentEntry;Lorg/apache/poi/poifs/filesystem/DocumentEntry;)Z
    .locals 10
    .param p0, "docA"    # Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .param p1, "docB"    # Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 240
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v4

    .line 244
    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v7

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 249
    const/4 v4, 0x1

    .line 250
    .local v4, "matches":Z
    const/4 v0, 0x0

    .local v0, "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    const/4 v2, 0x0

    .line 252
    .local v2, "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v0    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .local v1, "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :try_start_1
    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v3, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    .end local v2    # "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .local v3, "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read()I

    move-result v5

    .line 258
    .local v5, "readA":I
    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    .line 259
    .local v6, "readB":I
    if-eq v5, v6, :cond_5

    .line 260
    const/4 v4, 0x0

    .line 265
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 266
    :cond_4
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    goto :goto_0

    .line 263
    :cond_5
    if-eq v5, v9, :cond_3

    if-ne v6, v9, :cond_2

    goto :goto_1

    .line 265
    .end local v1    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v3    # "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v5    # "readA":I
    .end local v6    # "readB":I
    .restart local v0    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v2    # "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 266
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_7
    throw v7

    .line 265
    .end local v0    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v1    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v0    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    goto :goto_2

    .end local v0    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v2    # "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v1    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v3    # "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v2    # "inpB":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    move-object v0, v1

    .end local v1    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .restart local v0    # "inpA":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    goto :goto_2
.end method

.method public static copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 6
    .param p0, "entry"    # Lorg/apache/poi/poifs/filesystem/Entry;
    .param p1, "target"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .prologue
    .line 41
    const/4 v4, 0x0

    .line 42
    .local v4, "newTarget":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, p0

    .line 44
    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 45
    .local v1, "dirEntry":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v4

    .line 46
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 47
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v3

    .line 49
    .local v3, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-static {v5, v4}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    goto :goto_0

    .end local v1    # "dirEntry":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_0
    move-object v0, p0

    .line 56
    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 57
    .local v0, "dentry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    .line 58
    .local v2, "dstream":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 59
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 61
    .end local v0    # "dentry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .end local v2    # "dstream":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :cond_1
    return-void
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 3
    .param p0, "sourceRoot"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "targetRoot"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 75
    .local v0, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-static {v0, p1}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodeRecursively(Lorg/apache/poi/poifs/filesystem/Entry;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    goto :goto_0

    .line 77
    .end local v0    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
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
    .line 108
    .local p2, "excepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/poifs/filesystem/Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

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

    goto :goto_0

    .line 117
    .end local v1    # "entry":Lorg/apache/poi/poifs/filesystem/Entry;
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

    .prologue
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

    .prologue
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
