.class public final Lorg/apache/poi/hssf/record/CRNCountRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CRNCountRecord.java"


# static fields
.field private static final DATA_SIZE:S = 0x4s

.field public static final sid:S = 0x59s


# instance fields
.field private field_1_number_crn_records:I

.field private field_2_sheet_table_index:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "incomplete code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    .line 48
    if-gez v0, :cond_0

    .line 51
    neg-int v0, v0

    int-to-short v0, v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    .line 53
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    .line 54
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 71
    const/4 v0, 0x4

    return v0
.end method

.method public getNumberOfCRNs()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 78
    const/16 v0, 0x59

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 67
    iget v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    int-to-short v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 68
    iget v0, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    int-to-short v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " [XCT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, " nCRNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_1_number_crn_records:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, " sheetIx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/CRNCountRecord;->field_2_sheet_table_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
