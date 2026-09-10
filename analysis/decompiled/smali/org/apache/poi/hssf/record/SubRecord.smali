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

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "cmoOt"    # I

    .prologue
    .line 44
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    .line 45
    .local v1, "sid":I
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 47
    .local v0, "secondUShort":I
    sparse-switch v1, :sswitch_data_0

    .line 67
    new-instance v2, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    :goto_0
    return-object v2

    .line 49
    :sswitch_0
    new-instance v2, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    goto :goto_0

    .line 51
    :sswitch_1
    new-instance v2, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    goto :goto_0

    .line 53
    :sswitch_2
    new-instance v2, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    goto :goto_0

    .line 55
    :sswitch_3
    new-instance v2, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    goto :goto_0

    .line 57
    :sswitch_4
    new-instance v2, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    goto :goto_0

    .line 59
    :sswitch_5
    new-instance v2, Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    invoke-direct {v2, p0, v0, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;II)V

    goto :goto_0

    .line 61
    :sswitch_6
    new-instance v2, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    goto :goto_0

    .line 63
    :sswitch_7
    new-instance v2, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/record/FtPioGrbitSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    goto :goto_0

    .line 65
    :sswitch_8
    new-instance v2, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {v2, p0, v0}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    goto :goto_0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_1
        0xc -> :sswitch_6
        0xd -> :sswitch_4
        0x13 -> :sswitch_5
        0x15 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method protected abstract getDataSize()I
.end method

.method public isTerminating()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public abstract serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method

.method public serialize()[B
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord;->getDataSize()I

    move-result v2

    add-int/lit8 v1, v2, 0x4

    .line 78
    .local v1, "size":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 79
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v2, v0}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/SubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 81
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "write size mismatch"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method
