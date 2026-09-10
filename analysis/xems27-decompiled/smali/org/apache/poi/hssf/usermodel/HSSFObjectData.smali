.class public final Lorg/apache/poi/hssf/usermodel/HSSFObjectData;
.super Lorg/apache/poi/hssf/usermodel/HSSFPicture;
.source "HSSFObjectData.java"


# instance fields
.field private final _root:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 0
    .param p1, "spContainer"    # Lorg/apache/poi/ddf/EscherContainerRecord;
    .param p2, "objRecord"    # Lorg/apache/poi/hssf/record/ObjRecord;
    .param p3, "_root"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPicture;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;)V

    .line 43
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    .line 44
    return-void
.end method


# virtual methods
.method afterInsert(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 3
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 129
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->_getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v0

    .line 130
    .local v0, "agg":Lorg/apache/poi/hssf/record/EscherAggregate;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    const/16 v2, -0xfef

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/record/EscherAggregate;->associateShapeToObjRecord(Lorg/apache/poi/ddf/EscherRecord;Lorg/apache/poi/hssf/record/Record;)V

    .line 131
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->getPictureIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object v1

    .line 133
    .local v1, "bse":Lorg/apache/poi/ddf/EscherBSERecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 134
    return-void
.end method

.method protected afterRemove(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)V
    .locals 2
    .param p1, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HSSFObjectData cannot be created from scratch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cloneShape()Lorg/apache/poi/hssf/usermodel/HSSFShape;
    .locals 5

    .line 138
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 139
    .local v0, "spContainer":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->getEscherContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->serialize()[B

    move-result-object v1

    .line 140
    .local v1, "inSp":[B
    new-instance v2, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v2}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ObjRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ObjRecord;

    .line 142
    .local v2, "obj":Lorg/apache/poi/hssf/record/ObjRecord;
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-direct {v3, v0, v2, v4}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/hssf/record/ObjRecord;Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    return-object v3
.end method

.method protected createObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HSSFObjectData cannot be created from scratch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HSSFObjectData cannot be created from scratch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    .locals 3

    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->getObjRecord()Lorg/apache/poi/hssf/record/ObjRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ObjRecord;->getSubRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    .local v0, "subRecordIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/SubRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "subRecord":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    return-object v2

    .line 107
    .end local v1    # "subRecord":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Object data does not contain a reference to an embedded object OLE2 directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    .line 63
    .local v0, "subRecord":Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 64
    .local v1, "streamId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MBD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "streamName":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->_root:Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    invoke-interface {v3, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v3

    .line 67
    .local v3, "entry":Lorg/apache/poi/poifs/filesystem/Entry;
    instance-of v4, v3, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    if-eqz v4, :cond_0

    .line 68
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    return-object v4

    .line 70
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was not an OLE2 directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getOLE2ClassName()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getOLEClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectData()[B
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getObjectData()[B

    move-result-object v0

    return-object v0
.end method

.method public hasDirectoryEntry()Z
    .locals 3

    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;->findObjectRecord()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    .line 91
    .local v0, "subRecord":Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamId()Ljava/lang/Integer;

    move-result-object v1

    .line 92
    .local v1, "streamId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
