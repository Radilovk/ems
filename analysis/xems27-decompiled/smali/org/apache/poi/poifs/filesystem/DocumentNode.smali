.class public Lorg/apache/poi/poifs/filesystem/DocumentNode;
.super Lorg/apache/poi/poifs/filesystem/EntryNode;
.source "DocumentNode.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/DocumentEntry;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# instance fields
.field private _document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/poi/poifs/property/DocumentProperty;
    .param p2, "parent"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/EntryNode;-><init>(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->getDocument()Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 55
    return-void
.end method


# virtual methods
.method getDocument()Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v0

    return v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method protected isDeleteOK()Z
    .locals 1

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public isDocumentEntry()Z
    .locals 1

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public preferArray()Z
    .locals 1

    .line 155
    const/4 v0, 0x0

    return v0
.end method
