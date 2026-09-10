.class public final Lorg/apache/poi/hssf/record/UnknownRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "UnknownRecord.java"


# static fields
.field public static final BITMAP_00E9:I = 0xe9

.field public static final CODENAME_1BA:I = 0x1ba

.field public static final HEADER_FOOTER_089C:I = 0x89c

.field public static final LABELRANGES_015F:I = 0x15f

.field public static final PHONETICPR_00EF:I = 0xef

.field public static final PLS_004D:I = 0x4d

.field public static final PLV_MAC:I = 0x8c8

.field public static final PRINTSIZE_0033:I = 0x33

.field public static final QUICKTIP_0800:I = 0x800

.field public static final SCL_00A0:I = 0xa0

.field public static final SHEETEXT_0862:I = 0x862

.field public static final SHEETPROTECTION_0867:I = 0x867

.field public static final SHEETPR_0081:I = 0x81

.field public static final SORT_0090:I = 0x90

.field public static final STANDARDWIDTH_0099:I = 0x99


# instance fields
.field private _rawData:[B

.field private _sid:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "data"    # [B

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 71
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    .line 72
    iput-object p2, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 82
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    .line 90
    return-void
.end method

.method public static getBiffName(I)Ljava/lang/String;
    .locals 2
    .param p0, "sid"    # I

    .prologue
    .line 139
    sparse-switch p0, :sswitch_data_0

    .line 207
    invoke-static {p0}, Lorg/apache/poi/hssf/record/UnknownRecord;->isObservedButUnknown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 140
    :sswitch_0
    const-string v0, "PRINTSIZE"

    goto :goto_0

    .line 141
    :sswitch_1
    const-string v0, "PLS"

    goto :goto_0

    .line 142
    :sswitch_2
    const-string v0, "DCON"

    goto :goto_0

    .line 143
    :sswitch_3
    const-string v0, "IMDATA"

    goto :goto_0

    .line 144
    :sswitch_4
    const-string v0, "SHEETPR"

    goto :goto_0

    .line 145
    :sswitch_5
    const-string v0, "SORT"

    goto :goto_0

    .line 146
    :sswitch_6
    const-string v0, "LHRECORD"

    goto :goto_0

    .line 147
    :sswitch_7
    const-string v0, "STANDARDWIDTH"

    goto :goto_0

    .line 148
    :sswitch_8
    const-string v0, "SCL"

    goto :goto_0

    .line 149
    :sswitch_9
    const-string v0, "SCENMAN"

    goto :goto_0

    .line 151
    :sswitch_a
    const-string v0, "SXVI"

    goto :goto_0

    .line 152
    :sswitch_b
    const-string v0, "SXIVD"

    goto :goto_0

    .line 153
    :sswitch_c
    const-string v0, "SXLI"

    goto :goto_0

    .line 155
    :sswitch_d
    const-string v0, "OBPROJ"

    goto :goto_0

    .line 156
    :sswitch_e
    const-string v0, "PARAMQRY"

    goto :goto_0

    .line 157
    :sswitch_f
    const-string v0, "OLESIZE"

    goto :goto_0

    .line 158
    :sswitch_10
    const-string v0, "BITMAP"

    goto :goto_0

    .line 159
    :sswitch_11
    const-string v0, "PHONETICPR"

    goto :goto_0

    .line 160
    :sswitch_12
    const-string v0, "SXEX"

    goto :goto_0

    .line 162
    :sswitch_13
    const-string v0, "LABELRANGES"

    goto :goto_0

    .line 163
    :sswitch_14
    const-string v0, "CODENAME"

    goto :goto_0

    .line 164
    :sswitch_15
    const-string v0, "USERBVIEW"

    goto :goto_0

    .line 165
    :sswitch_16
    const-string v0, "QSI"

    goto :goto_0

    .line 167
    :sswitch_17
    const-string v0, "EXCEL9FILE"

    goto :goto_0

    .line 169
    :sswitch_18
    const-string v0, "QSISXTAG"

    goto :goto_0

    .line 170
    :sswitch_19
    const-string v0, "DBQUERYEXT"

    goto :goto_0

    .line 171
    :sswitch_1a
    const-string v0, "TXTQUERY"

    goto :goto_0

    .line 172
    :sswitch_1b
    const-string v0, "SXVIEWEX9"

    goto :goto_0

    .line 174
    :sswitch_1c
    const-string v0, "CONTINUEFRT"

    goto :goto_0

    .line 175
    :sswitch_1d
    const-string v0, "QUICKTIP"

    goto :goto_0

    .line 176
    :sswitch_1e
    const-string v0, "SHEETEXT"

    goto :goto_0

    .line 177
    :sswitch_1f
    const-string v0, "BOOKEXT"

    goto :goto_0

    .line 178
    :sswitch_20
    const-string v0, "SXADDL"

    goto :goto_0

    .line 179
    :sswitch_21
    const-string v0, "SHEETPROTECTION"

    goto :goto_0

    .line 180
    :sswitch_22
    const-string v0, "DATALABEXTCONTENTS"

    goto :goto_0

    .line 181
    :sswitch_23
    const-string v0, "CELLWATCH"

    goto :goto_0

    .line 182
    :sswitch_24
    const-string v0, "DROPDOWNOBJIDS"

    goto :goto_0

    .line 183
    :sswitch_25
    const-string v0, "DCONN"

    goto :goto_0

    .line 184
    :sswitch_26
    const-string v0, "CFEX"

    goto :goto_0

    .line 185
    :sswitch_27
    const-string v0, "XFCRC"

    goto :goto_0

    .line 186
    :sswitch_28
    const-string v0, "XFEXT"

    goto :goto_0

    .line 187
    :sswitch_29
    const-string v0, "CONTINUEFRT12"

    goto :goto_0

    .line 188
    :sswitch_2a
    const-string v0, "PLV"

    goto/16 :goto_0

    .line 189
    :sswitch_2b
    const-string v0, "COMPAT12"

    goto/16 :goto_0

    .line 190
    :sswitch_2c
    const-string v0, "DXF"

    goto/16 :goto_0

    .line 191
    :sswitch_2d
    const-string v0, "STYLEEXT"

    goto/16 :goto_0

    .line 192
    :sswitch_2e
    const-string v0, "THEME"

    goto/16 :goto_0

    .line 193
    :sswitch_2f
    const-string v0, "GUIDTYPELIB"

    goto/16 :goto_0

    .line 194
    :sswitch_30
    const-string v0, "MTRSETTINGS"

    goto/16 :goto_0

    .line 195
    :sswitch_31
    const-string v0, "COMPRESSPICTURES"

    goto/16 :goto_0

    .line 196
    :sswitch_32
    const-string v0, "HEADERFOOTER"

    goto/16 :goto_0

    .line 197
    :sswitch_33
    const-string v0, "SHAPEPROPSSTREAM"

    goto/16 :goto_0

    .line 198
    :sswitch_34
    const-string v0, "FORCEFULLCALCULATION"

    goto/16 :goto_0

    .line 199
    :sswitch_35
    const-string v0, "SHAPEPROPSSTREAM"

    goto/16 :goto_0

    .line 200
    :sswitch_36
    const-string v0, "TEXTPROPSSTREAM"

    goto/16 :goto_0

    .line 201
    :sswitch_37
    const-string v0, "RICHTEXTSTREAM"

    goto/16 :goto_0

    .line 203
    :sswitch_38
    const-string v0, "PLV{Mac Excel}"

    goto/16 :goto_0

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x4d -> :sswitch_1
        0x50 -> :sswitch_2
        0x7f -> :sswitch_3
        0x81 -> :sswitch_4
        0x90 -> :sswitch_5
        0x94 -> :sswitch_6
        0x99 -> :sswitch_7
        0xa0 -> :sswitch_8
        0xae -> :sswitch_9
        0xb2 -> :sswitch_a
        0xb4 -> :sswitch_b
        0xb5 -> :sswitch_c
        0xd3 -> :sswitch_d
        0xdc -> :sswitch_e
        0xde -> :sswitch_f
        0xe9 -> :sswitch_10
        0xef -> :sswitch_11
        0xf1 -> :sswitch_12
        0x15f -> :sswitch_13
        0x1a9 -> :sswitch_15
        0x1ad -> :sswitch_16
        0x1ba -> :sswitch_14
        0x1c0 -> :sswitch_17
        0x800 -> :sswitch_1d
        0x802 -> :sswitch_18
        0x803 -> :sswitch_19
        0x805 -> :sswitch_1a
        0x810 -> :sswitch_1b
        0x812 -> :sswitch_1c
        0x862 -> :sswitch_1e
        0x863 -> :sswitch_1f
        0x864 -> :sswitch_20
        0x867 -> :sswitch_21
        0x86b -> :sswitch_22
        0x86c -> :sswitch_23
        0x874 -> :sswitch_24
        0x876 -> :sswitch_25
        0x87b -> :sswitch_26
        0x87c -> :sswitch_27
        0x87d -> :sswitch_28
        0x87f -> :sswitch_29
        0x88b -> :sswitch_2a
        0x88c -> :sswitch_2b
        0x88d -> :sswitch_2c
        0x892 -> :sswitch_2d
        0x896 -> :sswitch_2e
        0x897 -> :sswitch_2f
        0x89a -> :sswitch_30
        0x89b -> :sswitch_31
        0x89c -> :sswitch_32
        0x8a1 -> :sswitch_33
        0x8a3 -> :sswitch_34
        0x8a4 -> :sswitch_35
        0x8a5 -> :sswitch_36
        0x8a6 -> :sswitch_37
        0x8c8 -> :sswitch_38
    .end sparse-switch
.end method

.method private static isObservedButUnknown(I)Z
    .locals 1
    .param p0, "sid"    # I

    .prologue
    .line 218
    sparse-switch p0, :sswitch_data_0

    .line 283
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 281
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x1bd -> :sswitch_0
        0x1c2 -> :sswitch_0
        0x89d -> :sswitch_0
        0x89e -> :sswitch_0
        0x8a7 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x1006 -> :sswitch_0
        0x1007 -> :sswitch_0
        0x1009 -> :sswitch_0
        0x100a -> :sswitch_0
        0x100b -> :sswitch_0
        0x100c -> :sswitch_0
        0x1014 -> :sswitch_0
        0x1017 -> :sswitch_0
        0x1018 -> :sswitch_0
        0x1019 -> :sswitch_0
        0x101a -> :sswitch_0
        0x101b -> :sswitch_0
        0x101d -> :sswitch_0
        0x101e -> :sswitch_0
        0x101f -> :sswitch_0
        0x1020 -> :sswitch_0
        0x1021 -> :sswitch_0
        0x1022 -> :sswitch_0
        0x1024 -> :sswitch_0
        0x1025 -> :sswitch_0
        0x1026 -> :sswitch_0
        0x1027 -> :sswitch_0
        0x1032 -> :sswitch_0
        0x1033 -> :sswitch_0
        0x1034 -> :sswitch_0
        0x1035 -> :sswitch_0
        0x103a -> :sswitch_0
        0x1041 -> :sswitch_0
        0x1043 -> :sswitch_0
        0x1044 -> :sswitch_0
        0x1045 -> :sswitch_0
        0x1046 -> :sswitch_0
        0x104a -> :sswitch_0
        0x104b -> :sswitch_0
        0x104e -> :sswitch_0
        0x104f -> :sswitch_0
        0x1051 -> :sswitch_0
        0x105c -> :sswitch_0
        0x105d -> :sswitch_0
        0x105f -> :sswitch_0
        0x1060 -> :sswitch_0
        0x1062 -> :sswitch_0
        0x1063 -> :sswitch_0
        0x1064 -> :sswitch_0
        0x1065 -> :sswitch_0
        0x1066 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 289
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    int-to-short v0, v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    iget v2, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    invoke-static {v2}, Lorg/apache/poi/hssf/record/UnknownRecord;->getBiffName(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "biffName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 112
    const-string v0, "UNKNOWNRECORD"

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    iget-object v2, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    array-length v2, v2

    if-lez v2, :cond_1

    .line 119
    const-string v2, "  rawData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_1
    const-string v2, "[/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
