.class public abstract Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "AbstractEscherOptRecord.java"


# instance fields
.field protected properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    return-void
.end method

.method private getPropertiesSize()I
    .locals 4

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "totalSize":I
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 76
    .local v2, "property":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherProperty;->getPropertySize()I

    move-result v3

    add-int/2addr v0, v3

    .line 77
    .end local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_0

    .line 79
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return v0
.end method


# virtual methods
.method public addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 1
    .param p1, "prop"    # Lorg/apache/poi/ddf/EscherProperty;

    .line 40
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->readHeader([BI)I

    move-result v0

    .line 47
    .local v0, "bytesRemaining":I
    invoke-static {p1, p2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->readInstance([BI)S

    move-result v1

    .line 48
    .local v1, "propertiesCount":S
    add-int/lit8 v2, p2, 0x8

    .line 50
    .local v2, "pos":I
    new-instance v3, Lorg/apache/poi/ddf/EscherPropertyFactory;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherPropertyFactory;-><init>()V

    .line 51
    .local v3, "f":Lorg/apache/poi/ddf/EscherPropertyFactory;
    invoke-virtual {v3, p1, v2, v1}, Lorg/apache/poi/ddf/EscherPropertyFactory;->createProperties([BIS)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    .line 52
    add-int/lit8 v4, v0, 0x8

    return v4
.end method

.method public getEscherProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getEscherProperty(I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 1
    .param p1, "index"    # I

    .line 68
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherProperty;

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 85
    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getPropertiesSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public lookup(I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 3
    .param p1, "propId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">(I)TT;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    .line 92
    .local v1, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 95
    move-object v2, v1

    .line 96
    .local v2, "result":Lorg/apache/poi/ddf/EscherProperty;, "TT;"
    return-object v2

    .line 98
    .end local v1    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    .end local v2    # "result":Lorg/apache/poi/ddf/EscherProperty;, "TT;"
    :cond_0
    goto :goto_0

    .line 99
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeEscherProperty(I)V
    .locals 3
    .param p1, "num"    # I

    .line 158
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    .line 160
    .local v1, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 163
    .end local v1    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    :cond_0
    goto :goto_0

    .line 164
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :cond_1
    return-void
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 105
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 107
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 108
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 109
    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getPropertiesSize()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 110
    add-int/lit8 v0, p1, 0x8

    .line 111
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 113
    .local v2, "property":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/ddf/EscherProperty;->serializeSimplePart([BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 114
    .end local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_0

    .line 115
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 117
    .restart local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/ddf/EscherProperty;->serializeComplexPart([BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 118
    .end local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_1

    .line 119
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getRecordId()S

    move-result v1

    sub-int v2, v0, p1

    invoke-interface {p3, v0, v1, v2, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 120
    sub-int v1, v0, p1

    return v1
.end method

.method public setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 4
    .param p1, "value"    # Lorg/apache/poi/ddf/EscherProperty;

    .line 146
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 147
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    .line 149
    .local v1, "prop":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v3

    if-ne v2, v3, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 152
    .end local v1    # "prop":Lorg/apache/poi/ddf/EscherProperty;
    :cond_0
    goto :goto_0

    .line 153
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->sortProperties()V

    .line 155
    return-void
.end method

.method public sortProperties()V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;

    invoke-direct {v1, p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;-><init>(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 171
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "nl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "  isContainer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->isContainerRecord()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v2, "  version: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getVersion()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v2, "  instance: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getInstance()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v2, "  recordId: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getRecordId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v2, "  numchildren: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, "  properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v2, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherProperty;

    .line 197
    .local v3, "property":Lorg/apache/poi/ddf/EscherProperty;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .end local v3    # "property":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_0

    .line 200
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tab"    # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getRecordId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getInstance()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    .line 209
    .local v2, "property":Lorg/apache/poi/ddf/EscherProperty;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherProperty;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .end local v2    # "property":Lorg/apache/poi/ddf/EscherProperty;
    goto :goto_0

    .line 211
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
