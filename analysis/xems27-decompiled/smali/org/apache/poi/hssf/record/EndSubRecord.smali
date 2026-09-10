.class public final Lorg/apache/poi/hssf/record/EndSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "EndSubRecord.java"


# static fields
.field private static final ENCODED_SIZE:I

.field public static final sid:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 44
    and-int/lit16 v0, p2, 0xff

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 45
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
    .locals 1

    .line 79
    new-instance v0, Lorg/apache/poi/hssf/record/EndSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/EndSubRecord;-><init>()V

    .line 81
    .local v0, "rec":Lorg/apache/poi/hssf/record/EndSubRecord;
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminating()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 65
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 66
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[ftEnd]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "[/ftEnd]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
