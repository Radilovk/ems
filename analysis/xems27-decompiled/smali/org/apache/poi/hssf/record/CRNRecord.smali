.class public final Lorg/apache/poi/hssf/record/CRNRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CRNRecord.java"


# static fields
.field public static final sid:S = 0x5as


# instance fields
.field private field_1_last_column_index:I

.field private field_2_first_column_index:I

.field private field_3_row_index:I

.field private field_4_constant_values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "incomplete code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_3_row_index:I

    .line 49
    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    iget v1, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 50
    .local v0, "nValues":I
    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getNumberOfCRNs()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 78
    const/16 v0, 0x5a

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 68
    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 69
    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 70
    iget v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_3_row_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 71
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_4_constant_values:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " [CRN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, " rowIx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_3_row_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, " firstColIx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_2_first_column_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, " lastColIx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/CRNRecord;->field_1_last_column_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
