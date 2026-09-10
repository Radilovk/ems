.class public final Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "GroupMarkerSubRecord.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field public static final sid:S = 0x6s


# instance fields
.field private reserved:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 38
    sget-object v0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 42
    new-array v0, p2, [B

    .line 43
    .local v0, "buf":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 44
    iput-object v0, p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 74
    new-instance v0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;-><init>()V

    .line 75
    .local v0, "rec":Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 77
    iget-object v3, v0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    aget-byte v2, v2, v1

    aput-byte v2, v3, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 70
    const/4 v0, 0x6

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 59
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 60
    iget-object v0, p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 61
    iget-object v0, p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "nl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ftGmo]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v2, "  reserved = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/GroupMarkerSubRecord;->reserved:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[/ftGmo]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
