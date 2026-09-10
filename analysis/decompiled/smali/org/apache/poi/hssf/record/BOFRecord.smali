.class public final Lorg/apache/poi/hssf/record/BOFRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "BOFRecord.java"


# static fields
.field public static final BUILD:I = 0x10d3

.field public static final BUILD_YEAR:I = 0x7cc

.field public static final HISTORY_MASK:I = 0x41

.field public static final TYPE_CHART:I = 0x20

.field public static final TYPE_EXCEL_4_MACRO:I = 0x40

.field public static final TYPE_VB_MODULE:I = 0x6

.field public static final TYPE_WORKBOOK:I = 0x5

.field public static final TYPE_WORKSHEET:I = 0x10

.field public static final TYPE_WORKSPACE_FILE:I = 0x100

.field public static final VERSION:I = 0x600

.field public static final biff2_sid:S = 0x9s

.field public static final biff3_sid:S = 0x209s

.field public static final biff4_sid:S = 0x409s

.field public static final biff5_sid:S = 0x809s

.field public static final sid:S = 0x809s


# instance fields
.field private field_1_version:I

.field private field_2_type:I

.field private field_3_build:I

.field private field_4_year:I

.field private field_5_history:I

.field private field_6_rversion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 72
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/16 v1, 0x600

    .line 74
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 75
    iput v1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_1_version:I

    .line 76
    iput p1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_2_type:I

    .line 77
    const/16 v0, 0x10d3

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_3_build:I

    .line 78
    const/16 v0, 0x7cc

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_4_year:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_5_history:I

    .line 80
    iput v1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_6_rversion:I

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 87
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 88
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_1_version:I

    .line 89
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_2_type:I

    .line 93
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_3_build:I

    .line 96
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 97
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_4_year:I

    .line 99
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 100
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_5_history:I

    .line 102
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 103
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_6_rversion:I

    .line 105
    :cond_3
    return-void
.end method

.method public static createSheetBOF()Lorg/apache/poi/hssf/record/BOFRecord;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(I)V

    return-object v0
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_2_type:I

    sparse-switch v0, :sswitch_data_0

    .line 251
    const-string v0, "#error unknown type#"

    :goto_0
    return-object v0

    .line 244
    :sswitch_0
    const-string v0, "chart"

    goto :goto_0

    .line 245
    :sswitch_1
    const-string v0, "excel 4 macro"

    goto :goto_0

    .line 246
    :sswitch_2
    const-string/jumbo v0, "vb module"

    goto :goto_0

    .line 247
    :sswitch_3
    const-string/jumbo v0, "workbook"

    goto :goto_0

    .line 248
    :sswitch_4
    const-string/jumbo v0, "worksheet"

    goto :goto_0

    .line 249
    :sswitch_5
    const-string/jumbo v0, "workspace file"

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x10 -> :sswitch_4
        0x20 -> :sswitch_0
        0x40 -> :sswitch_1
        0x100 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>()V

    .line 273
    .local v0, "rec":Lorg/apache/poi/hssf/record/BOFRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_1_version:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BOFRecord;->field_1_version:I

    .line 274
    iget v1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_2_type:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BOFRecord;->field_2_type:I

    .line 275
    iget v1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_3_build:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BOFRecord;->field_3_build:I

    .line 276
    iget v1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_4_year:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BOFRecord;->field_4_year:I

    .line 277
    iget v1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_5_history:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BOFRecord;->field_5_history:I

    .line 278
    iget v1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_6_rversion:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BOFRecord;->field_6_rversion:I

    .line 279
    return-object v0
.end method

.method public getBuild()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_3_build:I

    return v0
.end method

.method public getBuildYear()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_4_year:I

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 264
    const/16 v0, 0x10

    return v0
.end method

.method public getHistoryBitMask()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_5_history:I

    return v0
.end method

.method public getRequiredVersion()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_6_rversion:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 268
    const/16 v0, 0x809

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_2_type:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_1_version:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getVersion()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 256
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getBuild()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 258
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getBuildYear()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 259
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getHistoryBitMask()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 260
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getRequiredVersion()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 261
    return-void
.end method

.method public setBuild(I)V
    .locals 0
    .param p1, "build"    # I

    .prologue
    .line 136
    iput p1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_3_build:I

    .line 137
    return-void
.end method

.method public setBuildYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 145
    iput p1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_4_year:I

    .line 146
    return-void
.end method

.method public setHistoryBitMask(I)V
    .locals 0
    .param p1, "bitmask"    # I

    .prologue
    .line 154
    iput p1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_5_history:I

    .line 155
    return-void
.end method

.method public setRequiredVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 164
    iput p1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_6_rversion:I

    .line 165
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_2_type:I

    .line 128
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 113
    iput p1, p0, Lorg/apache/poi/hssf/record/BOFRecord;->field_1_version:I

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[BOF RECORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v1, "    .version  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getVersion()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v1, "    .type     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 233
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string v1, "    .build    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getBuild()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    const-string v1, "    .buildyear= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getBuildYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const-string v1, "    .history  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getHistoryBitMask()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v1, "    .reqver   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BOFRecord;->getRequiredVersion()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v1, "[/BOF RECORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
