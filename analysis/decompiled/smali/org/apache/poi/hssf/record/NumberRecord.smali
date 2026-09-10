.class public final Lorg/apache/poi/hssf/record/NumberRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "NumberRecord.java"


# static fields
.field public static final sid:S = 0x203s


# instance fields
.field private field_4_value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    .line 44
    return-void
.end method


# virtual methods
.method protected appendValueText(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 71
    const-string v0, "  .value= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    invoke-static {v2, v3}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    .line 92
    .local v0, "rec":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/NumberRecord;->copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 93
    iget-wide v2, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    iput-wide v2, v0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    .line 94
    return-object v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "NUMBER"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x203

    return v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    return-wide v0
.end method

.method protected getValueDataSize()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x8

    return v0
.end method

.method protected serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 77
    return-void
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 52
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/NumberRecord;->field_4_value:D

    .line 53
    return-void
.end method
