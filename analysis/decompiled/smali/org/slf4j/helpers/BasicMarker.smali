.class public Lorg/slf4j/helpers/BasicMarker;
.super Ljava/lang/Object;
.source "BasicMarker.java"

# interfaces
.implements Lorg/slf4j/Marker;


# static fields
.field private static CLOSE:Ljava/lang/String; = null

.field private static OPEN:Ljava/lang/String; = null

.field private static SEP:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1908ed5291b507e7L


# instance fields
.field private final name:Ljava/lang/String;

.field private referenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "[ "

    sput-object v0, Lorg/slf4j/helpers/BasicMarker;->OPEN:Ljava/lang/String;

    .line 155
    const-string v0, " ]"

    sput-object v0, Lorg/slf4j/helpers/BasicMarker;->CLOSE:Ljava/lang/String;

    .line 156
    const-string v0, ", "

    sput-object v0, Lorg/slf4j/helpers/BasicMarker;->SEP:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A marker name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/slf4j/Marker;)V
    .locals 2
    .param p1, "reference"    # Lorg/slf4j/Marker;

    .prologue
    .line 59
    monitor-enter p0

    if-nez p1, :cond_0

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A null value cannot be added to a Marker as reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/slf4j/helpers/BasicMarker;->contains(Lorg/slf4j/Marker;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :try_start_2
    invoke-interface {p1, p0}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    if-nez v0, :cond_3

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 75
    :cond_3
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Other cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_0
    iget-object v3, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    :goto_0
    return v2

    .line 144
    :cond_1
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    iget-object v3, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/Marker;

    .line 146
    .local v1, "ref":Lorg/slf4j/Marker;
    invoke-interface {v1, p1}, Lorg/slf4j/Marker;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 151
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ref":Lorg/slf4j/Marker;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/slf4j/Marker;)Z
    .locals 4
    .param p1, "other"    # Lorg/slf4j/Marker;

    .prologue
    const/4 v2, 0x1

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Other cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lorg/slf4j/helpers/BasicMarker;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    :goto_0
    return v2

    .line 122
    :cond_1
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    iget-object v3, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/Marker;

    .line 124
    .local v1, "ref":Lorg/slf4j/Marker;
    invoke-interface {v1, p1}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 129
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ref":Lorg/slf4j/Marker;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 160
    const/4 v1, 0x1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    if-eqz p1, :cond_0

    .line 163
    instance-of v2, p1, Lorg/slf4j/Marker;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 166
    check-cast v0, Lorg/slf4j/Marker;

    .line 167
    .local v0, "other":Lorg/slf4j/Marker;
    iget-object v1, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    invoke-interface {v0}, Lorg/slf4j/Marker;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized hasReferences()Z
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 93
    :goto_0
    monitor-exit p0

    return-object v1

    .line 92
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "emptyList":Ljava/util/List;, "Ljava/util/List<Lorg/slf4j/Marker;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 89
    .end local v0    # "emptyList":Ljava/util/List;, "Ljava/util/List<Lorg/slf4j/Marker;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Lorg/slf4j/Marker;)Z
    .locals 5
    .param p1, "referenceToRemove"    # Lorg/slf4j/Marker;

    .prologue
    const/4 v3, 0x0

    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 102
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 103
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 104
    iget-object v4, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/Marker;

    .line 105
    .local v1, "m":Lorg/slf4j/Marker;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iget-object v3, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    const/4 v3, 0x1

    goto :goto_0

    .line 103
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    .end local v1    # "m":Lorg/slf4j/Marker;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->getName()Ljava/lang/String;

    move-result-object v3

    .line 191
    :goto_0
    return-object v3

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 180
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/slf4j/Marker;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/slf4j/helpers/BasicMarker;->OPEN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/Marker;

    .line 184
    .local v1, "reference":Lorg/slf4j/Marker;
    invoke-interface {v1}, Lorg/slf4j/Marker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    sget-object v3, Lorg/slf4j/helpers/BasicMarker;->SEP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 189
    .end local v1    # "reference":Lorg/slf4j/Marker;
    :cond_2
    sget-object v3, Lorg/slf4j/helpers/BasicMarker;->CLOSE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
