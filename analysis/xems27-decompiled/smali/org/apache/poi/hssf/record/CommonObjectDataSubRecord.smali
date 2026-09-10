.class public final Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "CommonObjectDataSubRecord.java"


# static fields
.field public static final OBJECT_TYPE_ARC:S = 0x4s

.field public static final OBJECT_TYPE_BUTTON:S = 0x7s

.field public static final OBJECT_TYPE_CHART:S = 0x5s

.field public static final OBJECT_TYPE_CHECKBOX:S = 0xbs

.field public static final OBJECT_TYPE_COMBO_BOX:S = 0x14s

.field public static final OBJECT_TYPE_COMMENT:S = 0x19s

.field public static final OBJECT_TYPE_DIALOG_BOX:S = 0xfs

.field public static final OBJECT_TYPE_EDIT_BOX:S = 0xds

.field public static final OBJECT_TYPE_GROUP:S = 0x0s

.field public static final OBJECT_TYPE_GROUP_BOX:S = 0x13s

.field public static final OBJECT_TYPE_LABEL:S = 0xes

.field public static final OBJECT_TYPE_LINE:S = 0x1s

.field public static final OBJECT_TYPE_LIST_BOX:S = 0x12s

.field public static final OBJECT_TYPE_MICROSOFT_OFFICE_DRAWING:S = 0x1es

.field public static final OBJECT_TYPE_OPTION_BUTTON:S = 0xcs

.field public static final OBJECT_TYPE_OVAL:S = 0x3s

.field public static final OBJECT_TYPE_PICTURE:S = 0x8s

.field public static final OBJECT_TYPE_POLYGON:S = 0x9s

.field public static final OBJECT_TYPE_RECTANGLE:S = 0x2s

.field public static final OBJECT_TYPE_RESERVED1:S = 0xas

.field public static final OBJECT_TYPE_RESERVED2:S = 0x15s

.field public static final OBJECT_TYPE_RESERVED3:S = 0x16s

.field public static final OBJECT_TYPE_RESERVED4:S = 0x17s

.field public static final OBJECT_TYPE_RESERVED5:S = 0x18s

.field public static final OBJECT_TYPE_RESERVED6:S = 0x1as

.field public static final OBJECT_TYPE_RESERVED7:S = 0x1bs

.field public static final OBJECT_TYPE_RESERVED8:S = 0x1cs

.field public static final OBJECT_TYPE_RESERVED9:S = 0x1ds

.field public static final OBJECT_TYPE_SCROLL_BAR:S = 0x11s

.field public static final OBJECT_TYPE_SPINNER:S = 0x10s

.field public static final OBJECT_TYPE_TEXT:S = 0x6s

.field private static final autofill:Lorg/apache/poi/util/BitField;

.field private static final autoline:Lorg/apache/poi/util/BitField;

.field private static final locked:Lorg/apache/poi/util/BitField;

.field private static final printable:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x15s


# instance fields
.field private field_1_objectType:S

.field private field_2_objectId:I

.field private field_3_option:S

.field private field_4_reserved1:I

.field private field_5_reserved2:I

.field private field_6_reserved3:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    .line 35
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    .line 36
    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    .line 37
    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .line 84
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 85
    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    .line 88
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    .line 89
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    .line 90
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 91
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    .line 92
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    .line 93
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    .line 94
    return-void

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected size 18 but got ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 157
    new-instance v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;-><init>()V

    .line 159
    .local v0, "rec":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    .line 160
    iget v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    .line 161
    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 162
    iget v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    .line 163
    iget v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    .line 164
    iget v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    .line 165
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 148
    const/16 v0, 0x12

    return v0
.end method

.method public getObjectId()I
    .locals 1

    .line 257
    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    return v0
.end method

.method public getObjectType()S
    .locals 1

    .line 207
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    return v0
.end method

.method public getOption()S
    .locals 1

    .line 273
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    return v0
.end method

.method public getReserved1()I
    .locals 1

    .line 289
    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    return v0
.end method

.method public getReserved2()I
    .locals 1

    .line 305
    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    return v0
.end method

.method public getReserved3()I
    .locals 1

    .line 321
    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 153
    const/16 v0, 0x15

    return v0
.end method

.method public isAutofill()Z
    .locals 2

    .line 383
    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutoline()Z
    .locals 2

    .line 401
    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    .line 347
    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isPrintable()Z
    .locals 2

    .line 365
    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 136
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 137
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getDataSize()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 139
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 140
    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 141
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 142
    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 143
    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 144
    iget v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 145
    return-void
.end method

.method public setAutofill(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 374
    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autofill:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 375
    return-void
.end method

.method public setAutoline(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 392
    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->autoline:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 393
    return-void
.end method

.method public setLocked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 338
    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 339
    return-void
.end method

.method public setObjectId(I)V
    .locals 0
    .param p1, "field_2_objectId"    # I

    .line 265
    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_2_objectId:I

    .line 266
    return-void
.end method

.method public setObjectType(S)V
    .locals 0
    .param p1, "field_1_objectType"    # S

    .line 249
    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_1_objectType:S

    .line 250
    return-void
.end method

.method public setOption(S)V
    .locals 0
    .param p1, "field_3_option"    # S

    .line 281
    iput-short p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 282
    return-void
.end method

.method public setPrintable(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 356
    sget-object v0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->printable:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_3_option:S

    .line 357
    return-void
.end method

.method public setReserved1(I)V
    .locals 0
    .param p1, "field_4_reserved1"    # I

    .line 297
    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_4_reserved1:I

    .line 298
    return-void
.end method

.method public setReserved2(I)V
    .locals 0
    .param p1, "field_5_reserved2"    # I

    .line 313
    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_5_reserved2:I

    .line 314
    return-void
.end method

.method public setReserved3(I)V
    .locals 0
    .param p1, "field_6_reserved3"    # I

    .line 329
    iput p1, p0, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->field_6_reserved3:I

    .line 330
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[ftCmo]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, "    .objectType           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v5, "    .objectId             = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectId()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v5, "    .option               = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getOption()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getOption()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v5, "         .locked                   = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->isLocked()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    const-string v6, "         .printable                = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->isPrintable()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    const-string v6, "         .autofill                 = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->isAutofill()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    const-string v6, "         .autoline                 = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->isAutoline()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    const-string v5, "    .reserved1            = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved1()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved1()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v5, "    .reserved2            = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved2()I

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved2()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v5, "    .reserved3            = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved3()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getReserved3()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "[/ftCmo]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
