.class public final Lorg/apache/poi/hssf/record/LabelSSTRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "LabelSSTRecord.java"


# static fields
.field public static final sid:S = 0xfds


# instance fields
.field private field_4_sst_index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LabelSSTRecord;->field_4_sst_index:I

    .line 40
    return-void
.end method


# virtual methods
.method protected appendValueText(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 70
    const-string v0, "  .sstIndex = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 72
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 88
    new-instance v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    .line 89
    .local v0, "rec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 90
    iget v1, p0, Lorg/apache/poi/hssf/record/LabelSSTRecord;->field_4_sst_index:I

    iput v1, v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;->field_4_sst_index:I

    .line 91
    return-object v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "LABELSST"

    return-object v0
.end method

.method public getSSTIndex()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/poi/hssf/record/LabelSSTRecord;->field_4_sst_index:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 84
    const/16 v0, 0xfd

    return v0
.end method

.method protected getValueDataSize()I
    .locals 1

    .line 80
    const/4 v0, 0x4

    return v0
.end method

.method protected serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 76
    return-void
.end method

.method public setSSTIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 49
    iput p1, p0, Lorg/apache/poi/hssf/record/LabelSSTRecord;->field_4_sst_index:I

    .line 50
    return-void
.end method
