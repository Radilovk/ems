.class Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;
.super Ljava/lang/Object;
.source "POIFSReaderRegistry.java"


# instance fields
.field private chosenDocumentDescriptors:Ljava/util/Map;

.field private omnivorousListeners:Ljava/util/Set;

.field private selectiveListeners:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->selectiveListeners:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    .line 63
    return-void
.end method

.method private dropDocument(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .param p2, "descriptor"    # Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    .prologue
    .line 176
    iget-object v1, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 178
    .local v0, "listeners":Ljava/util/Set;
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    return-void
.end method

.method private removeSelectiveListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    .prologue
    .line 160
    iget-object v2, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->selectiveListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 162
    .local v1, "selectedDescriptors":Ljava/util/Set;
    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->dropDocument(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;)V

    goto :goto_0

    .line 171
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method getListeners(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 4
    .param p1, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 147
    .local v0, "rval":Ljava/util/Set;
    iget-object v2, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    invoke-direct {v3, p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 151
    .local v1, "selectiveListeners":Ljava/util/Set;
    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 155
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->removeSelectiveListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;)V

    .line 131
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    return-void
.end method

.method registerListener(Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderListener;
    .param p2, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p3, "documentName"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v3, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->omnivorousListeners:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 82
    iget-object v3, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->selectiveListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 84
    .local v1, "descriptors":Ljava/util/Set;
    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "descriptors":Ljava/util/Set;
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 89
    .restart local v1    # "descriptors":Ljava/util/Set;
    iget-object v3, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->selectiveListeners:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    invoke-direct {v0, p2, p3}, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V

    .line 94
    .local v0, "descriptor":Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 103
    .local v2, "listeners":Ljava/util/Set;
    if-nez v2, :cond_1

    .line 107
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "listeners":Ljava/util/Set;
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 108
    .restart local v2    # "listeners":Ljava/util/Set;
    iget-object v3, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderRegistry;->chosenDocumentDescriptors:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0    # "descriptor":Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;
    .end local v1    # "descriptors":Ljava/util/Set;
    .end local v2    # "listeners":Ljava/util/Set;
    :cond_2
    return-void
.end method
