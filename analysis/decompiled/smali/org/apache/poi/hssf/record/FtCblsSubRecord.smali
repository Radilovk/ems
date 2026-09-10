.class public final Lorg/apache/poi/hssf/record/FtCblsSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "FtCblsSubRecord.java"


# static fields
.field private static final ENCODED_SIZE:I = 0x14

.field public static final sid:S = 0xcs


# instance fields
.field private reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 42
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 46
    const/16 v1, 0x14

    if-eq p2, v1, :cond_0

    .line 47
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

    .line 50
    :cond_0
    new-array v0, p2, [B

    .line 51
    .local v0, "buf":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 52
    iput-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    new-instance v0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>()V

    .line 95
    .local v0, "rec":Lorg/apache/poi/hssf/record/FtCblsSubRecord;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 96
    .local v1, "recdata":[B
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iput-object v1, v0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    .line 98
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0xc

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 76
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 77
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 78
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FtCbls ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "  size     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->getDataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "  reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "[/FtCbls ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
