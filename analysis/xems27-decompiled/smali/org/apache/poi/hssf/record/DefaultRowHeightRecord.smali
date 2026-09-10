.class public final Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DefaultRowHeightRecord.java"


# static fields
.field public static final DEFAULT_ROW_HEIGHT:S = 0xffs

.field public static final sid:S = 0x225s


# instance fields
.field private field_1_option_flags:S

.field private field_2_row_height:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_1_option_flags:S

    .line 49
    const/16 v0, 0xff

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_2_row_height:S

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_1_option_flags:S

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_2_row_height:S

    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 126
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>()V

    .line 127
    .local v0, "rec":Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_1_option_flags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_1_option_flags:S

    .line 128
    iget-short v1, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_2_row_height:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_2_row_height:S

    .line 129
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 117
    const/4 v0, 0x4

    return v0
.end method

.method public getOptionFlags()S
    .locals 1

    .line 85
    iget-short v0, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_1_option_flags:S

    return v0
.end method

.method public getRowHeight()S
    .locals 1

    .line 95
    iget-short v0, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_2_row_height:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 122
    const/16 v0, 0x225

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->getOptionFlags()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->getRowHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 114
    return-void
.end method

.method public setOptionFlags(S)V
    .locals 0
    .param p1, "flags"    # S

    .line 65
    iput-short p1, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_1_option_flags:S

    .line 66
    return-void
.end method

.method public setRowHeight(S)V
    .locals 0
    .param p1, "height"    # S

    .line 75
    iput-short p1, p0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->field_2_row_height:S

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DEFAULTROWHEIGHT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "    .optionflags    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->getOptionFlags()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v2, "    .rowheight      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->getRowHeight()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, "[/DEFAULTROWHEIGHT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
