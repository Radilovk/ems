.class public final Lorg/apache/poi/hssf/record/FtCfSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "FtCfSubRecord.java"


# static fields
.field public static final BITMAP_BIT:S = 0x9s

.field public static final METAFILE_BIT:S = 0x2s

.field public static final UNSPECIFIED_BIT:S = -0x1s

.field public static final length:S = 0x2s

.field public static final sid:S = 0x7s


# instance fields
.field private flags:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .line 57
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    .line 58
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 61
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    .line 62
    return-void

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 101
    new-instance v0, Lorg/apache/poi/hssf/record/FtCfSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FtCfSubRecord;-><init>()V

    .line 102
    .local v0, "rec":Lorg/apache/poi/hssf/record/FtCfSubRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    .line 103
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public getFlags()S
    .locals 1

    .line 107
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 97
    const/4 v0, 0x7

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 83
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 84
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 86
    return-void
.end method

.method public setFlags(S)V
    .locals 0
    .param p1, "flags"    # S

    .line 111
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FtCf ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "  size     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v2, "  flags    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/FtCfSubRecord;->flags:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "[/FtCf ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
