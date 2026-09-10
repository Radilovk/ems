.class Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;
.super Ljava/lang/Object;
.source "FilteringDirectoryNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/poifs/filesystem/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Lorg/apache/poi/poifs/filesystem/Entry;

.field private parent:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->this$0:Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->access$100(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->parent:Ljava/util/Iterator;

    .line 194
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->locateNext()V

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;
    .param p2, "x1"    # Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$1;

    .line 188
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;-><init>(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)V

    return-void
.end method

.method private locateNext()V
    .locals 3

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->next:Lorg/apache/poi/poifs/filesystem/Entry;

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->parent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->next:Lorg/apache/poi/poifs/filesystem/Entry;

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->parent:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 201
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/Entry;
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->this$0:Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->access$200(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->this$0:Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-static {v1, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;->access$300(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->next:Lorg/apache/poi/poifs/filesystem/Entry;

    goto :goto_0

    .line 205
    .end local v0    # "e":Lorg/apache/poi/poifs/filesystem/Entry;
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->next:Lorg/apache/poi/poifs/filesystem/Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->next()Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/poifs/filesystem/Entry;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->next:Lorg/apache/poi/poifs/filesystem/Entry;

    .line 213
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode$FilteringIterator;->locateNext()V

    .line 214
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
