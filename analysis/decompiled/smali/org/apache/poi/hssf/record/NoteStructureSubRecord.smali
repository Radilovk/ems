.class public final Lorg/apache/poi/hssf/record/NoteStructureSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "NoteStructureSubRecord.java"


# static fields
.field private static final ENCODED_SIZE:I = 0x16

.field public static final sid:S = 0xds


# instance fields
.field private reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 47
    const/16 v0, 0x16

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 54
    const/16 v1, 0x16

    if-eq p2, v1, :cond_0

    .line 55
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    new-array v0, p2, [B

    .line 59
    .local v0, "buf":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 60
    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    .line 61
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    new-instance v0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;-><init>()V

    .line 103
    .local v0, "rec":Lorg/apache/poi/hssf/record/NoteStructureSubRecord;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 104
    .local v1, "recdata":[B
    iget-object v2, p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object v1, v0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    .line 106
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0xd

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 84
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 86
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[ftNts ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "  size     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->getDataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "  reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->reserved:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "[/ftNts ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
