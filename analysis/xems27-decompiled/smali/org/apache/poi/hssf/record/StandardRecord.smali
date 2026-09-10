.class public abstract Lorg/apache/poi/hssf/record/StandardRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "StandardRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getDataSize()I
.end method

.method public final getRecordSize()I
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StandardRecord;->getDataSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final serialize(I[B)I
    .locals 6
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 43
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StandardRecord;->getDataSize()I

    move-result v0

    .line 44
    .local v0, "dataSize":I
    add-int/lit8 v1, v0, 0x4

    .line 45
    .local v1, "recSize":I
    new-instance v2, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v2, p2, p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V

    .line 46
    .local v2, "out":Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StandardRecord;->getSid()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 47
    invoke-virtual {v2, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 48
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/StandardRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 49
    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v3

    sub-int/2addr v3, p1

    if-ne v3, v1, :cond_0

    .line 54
    return v1

    .line 50
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in serialization of ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Incorrect number of bytes written - expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected abstract serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method
