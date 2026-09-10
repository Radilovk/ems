.class public abstract Lorg/apache/poi/hssf/record/SubRecord;
.super Ljava/lang/Object;
.source "SubRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "cmoOt"    # I

    .line 44
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 45
    .local v0, "sid":I
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    .line 47
    .local v1, "secondUShort":I
    if-eqz v0, :cond_4

    const/16 v2, 0x13

    if-eq v0, v2, :cond_3

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v2, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object v2

    .line 51
    :pswitch_0
    new-instance v2, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object v2

    .line 63
    :pswitch_1
    new-instance v2, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object v2

    .line 65
    :pswitch_2
    new-instance v2, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object v2

    .line 53
    :pswitch_3
    new-instance v2, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object v2

    .line 57
    :cond_0
    new-instance v2, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object v2

    .line 61
    :cond_1
    new-instance v2, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object v2

    .line 49
    :cond_2
    new-instance v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object v2

    .line 59
    :cond_3
    new-instance v2, Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    invoke-direct {v2, p0, v1, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    return-object v2

    .line 55
    :cond_4
    new-instance v2, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method protected abstract getDataSize()I
.end method

.method public isTerminating()Z
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public abstract serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method

.method public serialize()[B
    .locals 4

    .line 77
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord;->getDataSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 78
    .local v0, "size":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 79
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/SubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "write size mismatch"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
