.class public Lorg/apache/poi/poifs/property/DirectoryProperty;
.super Lorg/apache/poi/poifs/property/Property;
.source "DirectoryProperty.java"

# interfaces
.implements Lorg/apache/poi/poifs/property/Parent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/property/DirectoryProperty$PropertyComparator;
    }
.end annotation


# instance fields
.field private _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private _children_names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I[BI)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/poifs/property/Property;-><init>(I[BI)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children_names:Ljava/util/Set;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lorg/apache/poi/poifs/property/Property;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children_names:Ljava/util/Set;

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->setName(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->setSize(I)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->setPropertyType(B)V

    .line 55
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->setStartBlock(I)V

    .line 56
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->setNodeColor(B)V

    .line 57
    return-void
.end method


# virtual methods
.method public addChild(Lorg/apache/poi/poifs/property/Property;)V
    .locals 4
    .param p1, "property"    # Lorg/apache/poi/poifs/property/Property;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children_names:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children_names:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v1, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void

    .line 260
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public changeName(Lorg/apache/poi/poifs/property/Property;Ljava/lang/String;)Z
    .locals 3
    .param p1, "property"    # Lorg/apache/poi/poifs/property/Property;
    .param p2, "newName"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/property/Property;->setName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "cleanNewName":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children_names:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/property/Property;->setName(Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x0

    .local v2, "result":Z
    goto :goto_0

    .line 99
    .end local v2    # "result":Z
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children_names:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children_names:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 101
    const/4 v2, 0x1

    .line 103
    .restart local v2    # "result":Z
    :goto_0
    return v2
.end method

.method public deleteChild(Lorg/apache/poi/poifs/property/Property;)Z
    .locals 3
    .param p1, "property"    # Lorg/apache/poi/poifs/property/Property;

    .line 115
    iget-object v0, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children_names:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return v0
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method protected preWrite()V
    .locals 6

    .line 196
    iget-object v0, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 198
    iget-object v0, p0, Lorg/apache/poi/poifs/property/DirectoryProperty;->_children:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/apache/poi/poifs/property/Property;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/property/Property;

    .line 200
    .local v0, "children":[Lorg/apache/poi/poifs/property/Property;
    new-instance v2, Lorg/apache/poi/poifs/property/DirectoryProperty$PropertyComparator;

    invoke-direct {v2}, Lorg/apache/poi/poifs/property/DirectoryProperty$PropertyComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 201
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 203
    .local v2, "midpoint":I
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/poi/poifs/property/Property;->getIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/property/DirectoryProperty;->setChildProperty(I)V

    .line 204
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/property/Property;->setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 205
    aget-object v1, v0, v1

    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/property/Property;->setNextChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 206
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 208
    aget-object v3, v0, v1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/poifs/property/Property;->setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 209
    aget-object v3, v0, v1

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/property/Property;->setNextChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "j":I
    :cond_0
    if-eqz v2, :cond_1

    .line 213
    aget-object v1, v0, v2

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/property/Property;->setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 216
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v1, :cond_3

    .line 218
    aget-object v1, v0, v2

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/property/Property;->setNextChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 219
    add-int/lit8 v1, v2, 0x1

    .restart local v1    # "j":I
    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 221
    aget-object v3, v0, v1

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/property/Property;->setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 222
    aget-object v3, v0, v1

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/poifs/property/Property;->setNextChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "j":I
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/property/Property;->setPreviousChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 225
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/property/Property;->setNextChild(Lorg/apache/poi/poifs/property/Child;)V

    goto :goto_2

    .line 229
    :cond_3
    aget-object v1, v0, v2

    invoke-virtual {v1, v4}, Lorg/apache/poi/poifs/property/Property;->setNextChild(Lorg/apache/poi/poifs/property/Child;)V

    .line 232
    .end local v0    # "children":[Lorg/apache/poi/poifs/property/Property;
    .end local v2    # "midpoint":I
    :cond_4
    :goto_2
    return-void
.end method
