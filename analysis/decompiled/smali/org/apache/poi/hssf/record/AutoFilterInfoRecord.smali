.class public final Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "AutoFilterInfoRecord.java"


# static fields
.field public static final sid:S = 0x9ds


# instance fields
.field private _cEntries:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->_cEntries:S

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x2

    return v0
.end method

.method public getNumEntries()S
    .locals 1

    .prologue
    .line 68
    iget-short v0, p0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->_cEntries:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x9d

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 83
    iget-short v0, p0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->_cEntries:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 84
    return-void
.end method

.method public setNumEntries(S)V
    .locals 0
    .param p1, "num"    # S

    .prologue
    .line 57
    iput-short p1, p0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->_cEntries:S

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[AUTOFILTERINFO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "    .numEntries          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-short v2, p0, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->_cEntries:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "[/AUTOFILTERINFO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
