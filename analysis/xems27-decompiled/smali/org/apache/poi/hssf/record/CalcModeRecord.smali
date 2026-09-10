.class public final Lorg/apache/poi/hssf/record/CalcModeRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CalcModeRecord.java"


# static fields
.field public static final AUTOMATIC:S = 0x1s

.field public static final AUTOMATIC_EXCEPT_TABLES:S = -0x1s

.field public static final MANUAL:S = 0x0s

.field public static final sid:S = 0xds


# instance fields
.field private field_1_calcmode:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 65
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    .line 67
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 124
    new-instance v0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CalcModeRecord;-><init>()V

    .line 125
    .local v0, "rec":Lorg/apache/poi/hssf/record/CalcModeRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    .line 126
    return-object v0
.end method

.method public getCalcMode()S
    .locals 1

    .line 96
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 115
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 120
    const/16 v0, 0xd

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;->getCalcMode()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 112
    return-void
.end method

.method public setCalcMode(S)V
    .locals 0
    .param p1, "calcmode"    # S

    .line 81
    iput-short p1, p0, Lorg/apache/poi/hssf/record/CalcModeRecord;->field_1_calcmode:S

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CALCMODE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, "    .calcmode       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CalcModeRecord;->getCalcMode()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, "[/CALCMODE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
