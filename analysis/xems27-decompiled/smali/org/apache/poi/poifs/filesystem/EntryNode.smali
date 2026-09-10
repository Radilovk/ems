.class public abstract Lorg/apache/poi/poifs/filesystem/EntryNode;
.super Ljava/lang/Object;
.source "EntryNode.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/Entry;


# instance fields
.field private _parent:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private _property:Lorg/apache/poi/poifs/property/Property;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p1, "property"    # Lorg/apache/poi/poifs/property/Property;
    .param p2, "parent"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/EntryNode;->_property:Lorg/apache/poi/poifs/property/Property;

    .line 56
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/EntryNode;->_parent:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 57
    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 2

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "rval":Z
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->isDeleteOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/EntryNode;->_parent:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->deleteEntry(Lorg/apache/poi/poifs/filesystem/EntryNode;)Z

    move-result v0

    .line 161
    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/EntryNode;->_property:Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/EntryNode;->_parent:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method protected getProperty()Lorg/apache/poi/poifs/property/Property;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/EntryNode;->_property:Lorg/apache/poi/poifs/property/Property;

    return-object v0
.end method

.method protected abstract isDeleteOK()Z
.end method

.method public isDirectoryEntry()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isDocumentEntry()Z
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method protected isRoot()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/EntryNode;->_parent:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newName"    # Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "rval":Z
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/EntryNode;->_parent:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->changeName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 186
    :cond_0
    return v0
.end method
