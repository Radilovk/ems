.class public final Lorg/apache/poi/hssf/record/CFHeaderRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CFHeaderRecord.java"


# static fields
.field public static final sid:S = 0x1b0s


# instance fields
.field private field_1_numcf:I

.field private field_2_need_recalculation:I

.field private field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_1_numcf:I

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_2_need_recalculation:I

    .line 54
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 55
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 56
    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "nRules"    # I

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    move-object v0, p1

    .line 45
    .local v0, "unmergedRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v0}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    .line 46
    .local v1, "mergeCellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 47
    iput p2, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_1_numcf:I

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 153
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>()V

    .line 154
    .local v0, "result":Lorg/apache/poi/hssf/record/CFHeaderRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_1_numcf:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_1_numcf:I

    .line 155
    iget v1, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_2_need_recalculation:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_2_need_recalculation:I

    .line 156
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 157
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->copy()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 158
    return-object v0
.end method

.method public getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getNeedRecalculation()Z
    .locals 2

    .line 69
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_2_need_recalculation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNumberOfConditionalFormats()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_1_numcf:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 148
    const/16 v0, 0x1b0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 141
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_1_numcf:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 142
    iget v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_2_need_recalculation:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 143
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 144
    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 145
    return-void
.end method

.method public setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4
    .param p1, "cellRanges"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 94
    if-eqz p1, :cond_1

    .line 98
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    .line 99
    .local v0, "cral":Lorg/apache/poi/ss/util/CellRangeAddressList;
    const/4 v1, 0x0

    .line 100
    .local v1, "enclosingRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 102
    aget-object v3, p1, v2

    .line 103
    .local v3, "cr":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v3, v1}, Lorg/apache/poi/hssf/record/cf/CellRangeUtil;->createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 100
    .end local v3    # "cr":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 107
    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 108
    return-void

    .line 96
    .end local v0    # "cral":Lorg/apache/poi/ss/util/CellRangeAddressList;
    .end local v1    # "enclosingRange":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cellRanges must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0
    .param p1, "cr"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 84
    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_3_enclosing_cell_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 85
    return-void
.end method

.method public setNeedRecalculation(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 74
    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_2_need_recalculation:I

    .line 75
    return-void
.end method

.method public setNumberOfConditionalFormats(I)V
    .locals 0
    .param p1, "n"    # I

    .line 64
    iput p1, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_1_numcf:I

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CFHEADER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v1, "\t.id\t\t= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x1b0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v2, "\t.numCF\t\t\t= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->getNumberOfConditionalFormats()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v2, "\t.needRecalc\t   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->getNeedRecalculation()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v2, "\t.enclosingCellRange= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->getEnclosingCellRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "\t.cfranges=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressList;->countRanges()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 126
    if-nez v1, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    const-string v2, ","

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFHeaderRecord;->field_4_cell_ranges:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v2, v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddress(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "[/CFHEADER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
