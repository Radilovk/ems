.class public final Lorg/apache/poi/hssf/record/IterationRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "IterationRecord.java"


# static fields
.field private static final iterationOn:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x11s


# instance fields
.field private _flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/IterationRecord;->iterationOn:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IterationRecord;->_flags:I

    .line 49
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "iterateOn"    # Z

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 43
    sget-object v0, Lorg/apache/poi/hssf/record/IterationRecord;->iterationOn:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IterationRecord;->_flags:I

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 90
    new-instance v0, Lorg/apache/poi/hssf/record/IterationRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IterationRecord;->getIteration()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/IterationRecord;-><init>(Z)V

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 82
    const/4 v0, 0x2

    return v0
.end method

.method public getIteration()Z
    .locals 2

    .line 65
    sget-object v0, Lorg/apache/poi/hssf/record/IterationRecord;->iterationOn:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/IterationRecord;->_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 86
    const/16 v0, 0x11

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 78
    iget v0, p0, Lorg/apache/poi/hssf/record/IterationRecord;->_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 79
    return-void
.end method

.method public setIteration(Z)V
    .locals 2
    .param p1, "iterate"    # Z

    .line 56
    sget-object v0, Lorg/apache/poi/hssf/record/IterationRecord;->iterationOn:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/IterationRecord;->_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/IterationRecord;->_flags:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[ITERATION]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "    .flags      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/IterationRecord;->_flags:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "[/ITERATION]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
