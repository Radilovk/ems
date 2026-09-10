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

    .line 139
    const-string v0, "SHAPEPROPSSTREAM"

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

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :sswitch_0
    const-string v0, "PLV{Mac Excel}"

    return-object v0

    .line 201
    :sswitch_1
    const-string v0, "RICHTEXTSTREAM"

    return-object v0

    .line 200
    :sswitch_2
    const-string v0, "TEXTPROPSSTREAM"

    return-object v0

    .line 199
    :sswitch_3
    return-object v0

    .line 198
    :sswitch_4
    const-string v0, "FORCEFULLCALCULATION"

    return-object v0

    .line 197
    :sswitch_5
    return-object v0

    .line 196
    :sswitch_6
    const-string v0, "HEADERFOOTER"

    return-object v0

    .line 195
    :sswitch_7
    const-string v0, "COMPRESSPICTURES"

    return-object v0

    .line 194
    :sswitch_8
    const-string v0, "MTRSETTINGS"

    return-object v0

    .line 193
    :sswitch_9
    const-string v0, "GUIDTYPELIB"

    return-object v0

    .line 192
    :sswitch_a
    const-string v0, "THEME"

    return-object v0

    .line 191
    :sswitch_b
    const-string v0, "STYLEEXT"

    return-object v0

    .line 190
    :sswitch_c
    const-string v0, "DXF"

    return-object v0

    .line 189
    :sswitch_d
    const-string v0, "COMPAT12"

    return-object v0

    .line 188
    :sswitch_e
    const-string v0, "PLV"

    return-object v0

    .line 187
    :sswitch_f
    const-string v0, "CONTINUEFRT12"

    return-object v0

    .line 186
    :sswitch_10
    const-string v0, "XFEXT"

    return-object v0

    .line 185
    :sswitch_11
    const-string v0, "XFCRC"

    return-object v0

    .line 184
    :sswitch_12
    const-string v0, "CFEX"

    return-object v0

    .line 183
    :sswitch_13
    const-string v0, "DCONN"

    return-object v0

    .line 182
    :sswitch_14
    const-string v0, "DROPDOWNOBJIDS"

    return-object v0

    .line 181
    :sswitch_15
    const-string v0, "CELLWATCH"

    return-object v0

    .line 180
    :sswitch_16
    const-string v0, "DATALABEXTCONTENTS"

    return-object v0

    .line 179
    :sswitch_17
    const-string v0, "SHEETPROTECTION"

    return-object v0

    .line 178
    :sswitch_18
    const-string v0, "SXADDL"

    return-object v0

    .line 177
    :sswitch_19
    const-string v0, "BOOKEXT"

    return-object v0

    .line 176
    :sswitch_1a
    const-string v0, "SHEETEXT"

    return-object v0

    .line 174
    :sswitch_1b
    const-string v0, "CONTINUEFRT"

    return-object v0

    .line 172
    :sswitch_1c
    const-string v0, "SXVIEWEX9"

    return-object v0

    .line 171
    :sswitch_1d
    const-string v0, "TXTQUERY"

    return-object v0

    .line 170
    :sswitch_1e
    const-string v0, "DBQUERYEXT"

    return-object v0

    .line 169
    :sswitch_1f
    const-string v0, "QSISXTAG"

    return-object v0

    .line 175
    :sswitch_20
    const-string v0, "QUICKTIP"

    return-object v0

    .line 167
    :sswitch_21
    const-string v0, "EXCEL9FILE"

    return-object v0

    .line 163
    :sswitch_22
    const-string v0, "CODENAME"

    return-object v0

    .line 165
    :sswitch_23
    const-string v0, "QSI"

    return-object v0

    .line 164
    :sswitch_24
    const-string v0, "USERBVIEW"

    return-object v0

    .line 162
    :sswitch_25
    const-string v0, "LABELRANGES"

    return-object v0

    .line 160
    :sswitch_26
    const-string v0, "SXEX"

    return-object v0

    .line 159
    :sswitch_27
    const-string v0, "PHONETICPR"

    return-object v0

    .line 158
    :sswitch_28
    const-string v0, "BITMAP"

    return-object v0

    .line 157
    :sswitch_29
    const-string v0, "OLESIZE"

    return-object v0

    .line 156
    :sswitch_2a
    const-string v0, "PARAMQRY"

    return-object v0

    .line 155
    :sswitch_2b
    const-string v0, "OBPROJ"

    return-object v0

    .line 153
    :sswitch_2c
    const-string v0, "SXLI"

    return-object v0

    .line 152
    :sswitch_2d
    const-string v0, "SXIVD"

    return-object v0

    .line 151
    :sswitch_2e
    const-string v0, "SXVI"

    return-object v0

    .line 149
    :sswitch_2f
    const-string v0, "SCENMAN"

    return-object v0

    .line 148
    :sswitch_30
    const-string v0, "SCL"

    return-object v0

    .line 147
    :sswitch_31
    const-string v0, "STANDARDWIDTH"

    return-object v0

    .line 146
    :sswitch_32
    const-string v0, "LHRECORD"

    return-object v0

    .line 145
    :sswitch_33
    const-string v0, "SORT"

    return-object v0

    .line 144
    :sswitch_34
    const-string v0, "SHEETPR"

    return-object v0

    .line 143
    :sswitch_35
    const-string v0, "IMDATA"

    return-object v0

    .line 142
    :sswitch_36
    const-string v0, "DCON"

    return-object v0

    .line 141
    :sswitch_37
    const-string v0, "PLS"

    return-object v0

    .line 140
    :sswitch_38
    const-string v0, "PRINTSIZE"

    return-object v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_38
        0x4d -> :sswitch_37
        0x50 -> :sswitch_36
        0x7f -> :sswitch_35
        0x81 -> :sswitch_34
        0x90 -> :sswitch_33
        0x94 -> :sswitch_32
        0x99 -> :sswitch_31
        0xa0 -> :sswitch_30
        0xae -> :sswitch_2f
        0xb2 -> :sswitch_2e
        0xb4 -> :sswitch_2d
        0xb5 -> :sswitch_2c
        0xd3 -> :sswitch_2b
        0xdc -> :sswitch_2a
        0xde -> :sswitch_29
        0xe9 -> :sswitch_28
        0xef -> :sswitch_27
        0xf1 -> :sswitch_26
        0x15f -> :sswitch_25
        0x1a9 -> :sswitch_24
        0x1ad -> :sswitch_23
        0x1ba -> :sswitch_22
        0x1c0 -> :sswitch_21
        0x800 -> :sswitch_20
        0x802 -> :sswitch_1f
        0x803 -> :sswitch_1e
        0x805 -> :sswitch_1d
        0x810 -> :sswitch_1c
        0x812 -> :sswitch_1b
        0x862 -> :sswitch_1a
        0x863 -> :sswitch_19
        0x864 -> :sswitch_18
        0x867 -> :sswitch_17
        0x86b -> :sswitch_16
        0x86c -> :sswitch_15
        0x874 -> :sswitch_14
        0x876 -> :sswitch_13
        0x87b -> :sswitch_12
        0x87c -> :sswitch_11
        0x87d -> :sswitch_10
        0x87f -> :sswitch_f
        0x88b -> :sswitch_e
        0x88c -> :sswitch_d
        0x88d -> :sswitch_c
        0x892 -> :sswitch_b
        0x896 -> :sswitch_a
        0x897 -> :sswitch_9
        0x89a -> :sswitch_8
        0x89b -> :sswitch_7
        0x89c -> :sswitch_6
        0x8a1 -> :sswitch_5
        0x8a3 -> :sswitch_4
        0x8a4 -> :sswitch_3
        0x8a5 -> :sswitch_2
        0x8a6 -> :sswitch_1
        0x8c8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isObservedButUnknown(I)Z
    .locals 1
    .param p0, "sid"    # I

    .line 218
    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    const/16 v0, 0x34

    if-eq p0, v0, :cond_0

    const/16 v0, 0x89d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x89e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1006

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1007

    if-eq p0, v0, :cond_0

    const/16 v0, 0x104a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x104b

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    .line 283
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    :pswitch_0
    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1bd -> :sswitch_0
        0x1c2 -> :sswitch_0
        0x8a7 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x1014 -> :sswitch_0
        0x101d -> :sswitch_0
        0x101e -> :sswitch_0
        0x101f -> :sswitch_0
        0x1020 -> :sswitch_0
        0x1021 -> :sswitch_0
        0x1022 -> :sswitch_0
        0x103a -> :sswitch_0
        0x1041 -> :sswitch_0
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

    :pswitch_data_0
    .packed-switch 0x1009
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1017
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1024
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1032
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1043
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 289
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 127
    iget v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    int-to-short v0, v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 110
    iget v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    invoke-static {v0}, Lorg/apache/poi/hssf/record/UnknownRecord;->getBiffName(I)Ljava/lang/String;

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

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v2, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_1
    const-string v2, "[/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
