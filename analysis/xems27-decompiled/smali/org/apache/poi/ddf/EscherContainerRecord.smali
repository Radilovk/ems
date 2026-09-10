.class public final Lorg/apache/poi/ddf/EscherContainerRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherContainerRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;
    }
.end annotation


# static fields
.field public static final BSTORE_CONTAINER:S = -0xfffs

.field public static final DGG_CONTAINER:S = -0x1000s

.field public static final DG_CONTAINER:S = -0xffes

.field public static final SOLVER_CONTAINER:S = -0xffbs

.field public static final SPGR_CONTAINER:S = -0xffds

.field public static final SP_CONTAINER:S = -0xffcs

.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _childRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field private _remainingLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherContainerRecord;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    .line 159
    return-void
.end method


# virtual methods
.method public addChildBefore(Lorg/apache/poi/ddf/EscherRecord;I)V
    .locals 4
    .param p1, "record"    # Lorg/apache/poi/ddf/EscherRecord;
    .param p2, "insertBeforeRecordId"    # I

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 249
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 250
    .local v1, "rec":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    if-ne v2, p2, :cond_0

    .line 251
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v3

    .line 248
    .end local v1    # "rec":Lorg/apache/poi/ddf/EscherRecord;
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V
    .locals 1
    .param p1, "record"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 244
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public display(Ljava/io/PrintWriter;I)V
    .locals 3
    .param p1, "w"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # I

    .line 235
    invoke-super {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    .line 236
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 239
    .local v1, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    .line 240
    .end local v1    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 241
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_0
    return-void
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 9
    .param p1, "data"    # [B
    .param p2, "pOffset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherContainerRecord;->readHeader([BI)I

    move-result v0

    .line 77
    .local v0, "bytesRemaining":I
    const/16 v1, 0x8

    .line 78
    .local v1, "bytesWritten":I
    add-int/lit8 v2, p2, 0x8

    .line 79
    .local v2, "offset":I
    :goto_0
    if-lez v0, :cond_1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 80
    invoke-interface {p3, p1, v2}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    .line 81
    .local v3, "child":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v3, p1, v2, p3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v4

    .line 82
    .local v4, "childBytesWritten":I
    add-int/2addr v1, v4

    .line 83
    add-int/2addr v2, v4

    .line 84
    sub-int/2addr v0, v4

    .line 85
    invoke-virtual {p0, v3}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    .line 86
    array-length v5, p1

    if-lt v2, v5, :cond_0

    if-lez v0, :cond_0

    .line 87
    iput v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_remainingLength:I

    .line 88
    sget-object v5, Lorg/apache/poi/ddf/EscherContainerRecord;->log:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    sget-object v5, Lorg/apache/poi/ddf/EscherContainerRecord;->log:Lorg/apache/poi/util/POILogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not enough Escher data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bytes remaining but no space left"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 92
    .end local v3    # "child":Lorg/apache/poi/ddf/EscherRecord;
    .end local v4    # "childBytesWritten":I
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    return v1
.end method

.method public getChild(I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 1
    .param p1, "index"    # I

    .line 146
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    return-object v0
.end method

.method public getChildById(S)Lorg/apache/poi/ddf/EscherRecord;
    .locals 3
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(S)TT;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 308
    .local v1, "childRecord":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 311
    move-object v2, v1

    .line 312
    .local v2, "result":Lorg/apache/poi/ddf/EscherRecord;, "TT;"
    return-object v2

    .line 314
    .end local v1    # "childRecord":Lorg/apache/poi/ddf/EscherRecord;
    .end local v2    # "result":Lorg/apache/poi/ddf/EscherRecord;, "TT;"
    :cond_0
    goto :goto_0

    .line 315
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildContainers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "containers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherContainerRecord;>;"
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 208
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v3, v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v3, :cond_0

    .line 209
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    goto :goto_0

    .line 212
    :cond_1
    return-object v0
.end method

.method public getChildIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getChildRecords()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 2

    .line 216
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :pswitch_0
    const-string v0, "SolverContainer"

    return-object v0

    .line 226
    :pswitch_1
    const-string v0, "SpContainer"

    return-object v0

    .line 224
    :pswitch_2
    const-string v0, "SpgrContainer"

    return-object v0

    .line 222
    :pswitch_3
    const-string v0, "DgContainer"

    return-object v0

    .line 220
    :pswitch_4
    const-string v0, "BStoreContainer"

    return-object v0

    .line 218
    :pswitch_5
    const-string v0, "DggContainer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1000
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRecordSize()I
    .locals 4

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "childRecordsSize":I
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 126
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 127
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 128
    :cond_0
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method public getRecordsById(SLjava/util/List;)V
    .locals 3
    .param p1, "recordId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 325
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 327
    .local v1, "r":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v2, v1, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-eqz v2, :cond_0

    .line 328
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 329
    .local v2, "c":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v2, p1, p2}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordsById(SLjava/util/List;)V

    .end local v2    # "c":Lorg/apache/poi/ddf/EscherContainerRecord;
    goto :goto_1

    .line 330
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    if-ne v2, p1, :cond_1

    .line 331
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 330
    :cond_1
    :goto_1
    nop

    .line 333
    .end local v1    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :goto_2
    goto :goto_0

    .line 334
    :cond_2
    return-void
.end method

.method public hasChildOfType(S)Z
    .locals 3
    .param p1, "recordId"    # S

    .line 136
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 137
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 139
    .local v1, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    if-ne v2, p1, :cond_0

    .line 140
    const/4 v2, 0x1

    return v2

    .line 142
    .end local v1    # "r":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    goto :goto_0

    .line 143
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z
    .locals 1
    .param p1, "toBeRemoved"    # Lorg/apache/poi/ddf/EscherRecord;

    .line 193
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 101
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "remainingBytes":I
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 106
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 107
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 108
    :cond_0
    iget v2, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_remainingLength:I

    add-int/2addr v0, v2

    .line 109
    add-int/lit8 v2, p1, 0x4

    invoke-static {p2, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 110
    add-int/lit8 v2, p1, 0x8

    .line 111
    .local v2, "pos":I
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherRecord;

    .line 114
    .local v3, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v3, v2, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v4

    add-int/2addr v2, v4

    .line 115
    .end local v3    # "r":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v3

    sub-int v4, v2, p1

    invoke-interface {p3, v2, v3, v4, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 118
    sub-int v3, v2, p1

    return v3
.end method

.method public setChildRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "childRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child records private data member has escaped"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 259
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "nl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    .local v1, "children":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  children: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, "count":I
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 268
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    .line 271
    .local v4, "record":Lorg/apache/poi/ddf/EscherRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   Child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, "childResult":Ljava/lang/String;
    const-string v6, "\n"

    const-string v7, "\n    "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    const-string v6, "    "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    nop

    .end local v4    # "record":Lorg/apache/poi/ddf/EscherRecord;
    .end local v5    # "childResult":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 278
    goto :goto_0

    .line 281
    .end local v2    # "count":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  isContainer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->isContainerRecord()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  version: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  instance: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getInstance()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  recordId: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  numchildren: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tab"    # Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getInstance()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/poi/ddf/EscherContainerRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 295
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    .line 298
    .local v2, "record":Lorg/apache/poi/ddf/EscherRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .end local v2    # "record":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 300
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getRecordName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
