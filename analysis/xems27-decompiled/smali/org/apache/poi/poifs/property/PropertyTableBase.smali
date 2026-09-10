.class public abstract Lorg/apache/poi/poifs/property/PropertyTableBase;
.super Ljava/lang/Object;
.source "PropertyTableBase.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/BATManaged;


# instance fields
.field private final _header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field protected final _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 1
    .param p1, "header_block"    # Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    .line 43
    new-instance v0, Lorg/apache/poi/poifs/property/RootProperty;

    invoke-direct {v0}, Lorg/apache/poi/poifs/property/RootProperty;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)V
    .locals 1
    .param p1, "header_block"    # Lorg/apache/poi/poifs/storage/HeaderBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    .local p2, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/property/Property;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    .line 62
    iput-object p2, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    .line 64
    return-void
.end method

.method private populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 4
    .param p1, "root"    # Lorg/apache/poi/poifs/property/DirectoryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildIndex()I

    move-result v0

    .line 102
    .local v0, "index":I
    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 110
    .local v1, "children":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/apache/poi/poifs/property/Property;>;"
    iget-object v2, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 113
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/Property;

    .line 114
    .local v2, "property":Lorg/apache/poi/poifs/property/Property;
    if-nez v2, :cond_1

    .line 117
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    .line 121
    invoke-virtual {v2}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, v3}, Lorg/apache/poi/poifs/property/PropertyTableBase;->populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    .line 125
    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/poifs/property/Property;->getPreviousChildIndex()I

    move-result v0

    .line 126
    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    iget-object v3, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_3
    invoke-virtual {v2}, Lorg/apache/poi/poifs/property/Property;->getNextChildIndex()I

    move-result v0

    .line 131
    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    iget-object v3, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v2    # "property":Lorg/apache/poi/poifs/property/Property;
    :cond_4
    goto :goto_0

    .line 136
    :cond_5
    return-void
.end method


# virtual methods
.method public addProperty(Lorg/apache/poi/poifs/property/Property;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/poi/poifs/property/Property;

    .line 73
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getRoot()Lorg/apache/poi/poifs/property/RootProperty;
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/RootProperty;

    return-object v0
.end method

.method public getStartBlock()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v0

    return v0
.end method

.method public removeProperty(Lorg/apache/poi/poifs/property/Property;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/poi/poifs/property/Property;

    .line 83
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public setStartBlock(I)V
    .locals 1
    .param p1, "index"    # I

    .line 156
    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setPropertyStart(I)V

    .line 157
    return-void
.end method
