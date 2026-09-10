.class public final Lorg/apache/poi/hssf/record/OldSheetRecord;
.super Ljava/lang/Object;
.source "OldSheetRecord.java"


# static fields
.field public static final sid:S = 0x85s


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private field_1_position_of_BOF:I

.field private field_2_visibility:I

.field private field_3_type:I

.field private field_5_sheetname:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_1_position_of_BOF:I

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_2_visibility:I

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_3_type:I

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 42
    .local v0, "field_4_sheetname_length":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_5_sheetname:[B

    .line 43
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    .line 44
    return-void
.end method


# virtual methods
.method public getPositionOfBof()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_1_position_of_BOF:I

    return v0
.end method

.method public getSheetname()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_5_sheetname:[B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 51
    const/16 v0, 0x85

    return v0
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0
    .param p1, "codepage"    # Lorg/apache/poi/hssf/record/CodepageRecord;

    .line 47
    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[BOUNDSHEET]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "    .bof        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getPositionOfBof()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v2, "    .visibility = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_2_visibility:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v2, "    .type       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_3_type:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v2, "    .sheetname  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "[/BOUNDSHEET]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
