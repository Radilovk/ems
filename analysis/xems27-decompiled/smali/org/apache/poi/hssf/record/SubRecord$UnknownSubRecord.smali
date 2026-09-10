.class final Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SubRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/SubRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnknownSubRecord"
.end annotation


# instance fields
.field private final _data:[B

.field private final _sid:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "sid"    # I
    .param p3, "size"    # I

    .line 106
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 107
    iput p2, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    .line 108
    new-array v0, p3, [B

    .line 109
    .local v0, "buf":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 110
    iput-object v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    .line 111
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 121
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    array-length v0, v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 116
    iget v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 117
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 118
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
