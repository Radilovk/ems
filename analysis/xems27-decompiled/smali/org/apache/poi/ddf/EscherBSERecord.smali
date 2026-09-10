.class public final Lorg/apache/poi/ddf/EscherBSERecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherBSERecord.java"


# static fields
.field public static final BT_DIB:B = 0x7t

.field public static final BT_EMF:B = 0x2t

.field public static final BT_ERROR:B = 0x0t

.field public static final BT_JPEG:B = 0x5t

.field public static final BT_PICT:B = 0x4t

.field public static final BT_PNG:B = 0x6t

.field public static final BT_UNKNOWN:B = 0x1t

.field public static final BT_WMF:B = 0x3t

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtBSE"

.field public static final RECORD_ID:S = -0xff9s


# instance fields
.field private _remainingData:[B

.field private field_10_unused2:B

.field private field_11_unused3:B

.field private field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

.field private field_1_blipTypeWin32:B

.field private field_2_blipTypeMacOS:B

.field private field_3_uid:[B

.field private field_4_tag:S

.field private field_5_size:I

.field private field_6_ref:I

.field private field_7_offset:I

.field private field_8_usage:B

.field private field_9_name:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method

.method public static getBlipType(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .line 356
    packed-switch p0, :pswitch_data_0

    .line 366
    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    .line 367
    const-string v0, " NotKnown"

    return-object v0

    .line 364
    :pswitch_0
    const-string v0, " DIB"

    return-object v0

    .line 363
    :pswitch_1
    const-string v0, " PNG"

    return-object v0

    .line 362
    :pswitch_2
    const-string v0, " JPEG"

    return-object v0

    .line 361
    :pswitch_3
    const-string v0, " PICT"

    return-object v0

    .line 360
    :pswitch_4
    const-string v0, " WMF"

    return-object v0

    .line 359
    :pswitch_5
    const-string v0, " EMF"

    return-object v0

    .line 358
    :pswitch_6
    const-string v0, " UNKNOWN"

    return-object v0

    .line 357
    :pswitch_7
    const-string v0, " ERROR"

    return-object v0

    .line 369
    :cond_0
    const-string v0, " Client"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherBSERecord;->readHeader([BI)I

    move-result v0

    .line 61
    .local v0, "bytesRemaining":I
    add-int/lit8 v1, p2, 0x8

    .line 62
    .local v1, "pos":I
    aget-byte v2, p1, v1

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    .line 63
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    .line 64
    add-int/lit8 v2, v1, 0x2

    const/16 v3, 0x10

    new-array v4, v3, [B

    iput-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    const/4 v5, 0x0

    invoke-static {p1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    add-int/lit8 v2, v1, 0x12

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    .line 66
    add-int/lit8 v2, v1, 0x14

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    .line 67
    add-int/lit8 v2, v1, 0x18

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    .line 68
    add-int/lit8 v2, v1, 0x1c

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    .line 69
    add-int/lit8 v2, v1, 0x20

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    .line 70
    add-int/lit8 v2, v1, 0x21

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    .line 71
    add-int/lit8 v2, v1, 0x22

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    .line 72
    add-int/lit8 v2, v1, 0x23

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    .line 73
    add-int/lit8 v0, v0, -0x24

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "bytesRead":I
    if-lez v0, :cond_0

    .line 78
    add-int/lit8 v3, v1, 0x24

    invoke-interface {p3, p1, v3}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherBlipRecord;

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    .line 79
    add-int/lit8 v4, v1, 0x24

    invoke-virtual {v3, p1, v4, p3}, Lorg/apache/poi/ddf/EscherBlipRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v2

    .line 81
    :cond_0
    add-int/lit8 v3, v2, 0x24

    add-int/2addr v1, v3

    .line 82
    sub-int/2addr v0, v2

    .line 84
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 85
    invoke-static {p1, v1, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    add-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x24

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v5

    :goto_0
    add-int/2addr v3, v5

    return v3
.end method

.method public getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    return-object v0
.end method

.method public getBlipTypeMacOS()B
    .locals 1

    .line 166
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    return v0
.end method

.method public getBlipTypeWin32()B
    .locals 1

    .line 151
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    return v0
.end method

.method public getName()B
    .locals 1

    .line 264
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 236
    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 143
    const-string v0, "BSE"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 3

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "field_12_size":I
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v0

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 135
    .local v1, "remaining_size":I
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    if-eqz v2, :cond_1

    .line 136
    array-length v1, v2

    .line 138
    :cond_1
    add-int/lit8 v2, v0, 0x2c

    add-int/2addr v2, v1

    return v2
.end method

.method public getRef()I
    .locals 1

    .line 222
    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    return v0
.end method

.method public getRemainingData()[B
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 208
    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    return v0
.end method

.method public getTag()S
    .locals 1

    .line 194
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    return v0
.end method

.method public getUid()[B
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    return-object v0
.end method

.method public getUnused2()B
    .locals 1

    .line 275
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    return v0
.end method

.method public getUnused3()B
    .locals 1

    .line 283
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    return v0
.end method

.method public getUsage()B
    .locals 1

    .line 250
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 91
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 93
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 97
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 98
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    if-nez v0, :cond_1

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v0

    .line 100
    .local v0, "blipSize":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x24

    add-int/2addr v2, v0

    .line 101
    .local v2, "remainingBytes":I
    add-int/lit8 v3, p1, 0x4

    invoke-static {p2, v3, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 103
    add-int/lit8 v3, p1, 0x8

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    aput-byte v4, p2, v3

    .line 104
    add-int/lit8 v3, p1, 0x9

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    aput-byte v4, p2, v3

    .line 105
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 106
    add-int/lit8 v4, p1, 0xa

    add-int/2addr v4, v3

    iget-object v5, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    aget-byte v5, v5, v3

    aput-byte v5, p2, v4

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v3, p1, 0x1a

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 108
    add-int/lit8 v3, p1, 0x1c

    iget v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 109
    add-int/lit8 v3, p1, 0x20

    iget v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 110
    add-int/lit8 v3, p1, 0x24

    iget v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    invoke-static {p2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 111
    add-int/lit8 v3, p1, 0x28

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    aput-byte v4, p2, v3

    .line 112
    add-int/lit8 v3, p1, 0x29

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    aput-byte v4, p2, v3

    .line 113
    add-int/lit8 v3, p1, 0x2a

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    aput-byte v4, p2, v3

    .line 114
    add-int/lit8 v3, p1, 0x2b

    iget-byte v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    aput-byte v4, p2, v3

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "bytesWritten":I
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-eqz v4, :cond_4

    .line 118
    add-int/lit8 v5, p1, 0x2c

    new-instance v6, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v6}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {v4, v5, p2, v6}, Lorg/apache/poi/ddf/EscherBlipRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v3

    .line 120
    :cond_4
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    if-nez v4, :cond_5

    .line 121
    new-array v4, v1, [B

    iput-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 122
    :cond_5
    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    add-int/lit8 v5, p1, 0x2c

    add-int/2addr v5, v3

    array-length v6, v4

    invoke-static {v4, v1, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x24

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 125
    .local v1, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRecordId()S

    move-result v4

    sub-int v5, v1, p1

    invoke-interface {p3, v1, v4, v5, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 126
    sub-int v4, v1, p1

    return v4
.end method

.method public setBlipRecord(Lorg/apache/poi/ddf/EscherBlipRecord;)V
    .locals 0
    .param p1, "blipRecord"    # Lorg/apache/poi/ddf/EscherBlipRecord;

    .line 295
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    .line 296
    return-void
.end method

.method public setBlipTypeMacOS(B)V
    .locals 0
    .param p1, "blipTypeMacOS"    # B

    .line 173
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    .line 174
    return-void
.end method

.method public setBlipTypeWin32(B)V
    .locals 0
    .param p1, "blipTypeWin32"    # B

    .line 158
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    .line 159
    return-void
.end method

.method public setName(B)V
    .locals 0
    .param p1, "name"    # B

    .line 271
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    .line 272
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 243
    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    .line 244
    return-void
.end method

.method public setRef(I)V
    .locals 0
    .param p1, "ref"    # I

    .line 229
    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    .line 230
    return-void
.end method

.method public setRemainingData([B)V
    .locals 0
    .param p1, "remainingData"    # [B

    .line 309
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    .line 310
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 215
    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    .line 216
    return-void
.end method

.method public setTag(S)V
    .locals 0
    .param p1, "tag"    # S

    .line 201
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    .line 202
    return-void
.end method

.method public setUid([B)V
    .locals 0
    .param p1, "uid"    # [B

    .line 187
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    .line 188
    return-void
.end method

.method public setUnused2(B)V
    .locals 0
    .param p1, "unused2"    # B

    .line 279
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    .line 280
    return-void
.end method

.method public setUnused3(B)V
    .locals 0
    .param p1, "unused3"    # B

    .line 287
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    .line 288
    return-void
.end method

.method public setUsage(B)V
    .locals 0
    .param p1, "usage"    # B

    .line 257
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 313
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "extraData":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  RecordId: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, -0xff9

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Version: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Instance: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getInstance()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  BlipTypeWin32: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  BlipTypeMacOS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  SUID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Tag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Ref: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Offset: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Usage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Unused2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Unused3: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  blipRecord: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Extra Data:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tab"    # Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRecordId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getInstance()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/poi/ddf/EscherBSERecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<BlipTypeWin32>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</BlipTypeWin32>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<BlipTypeMacOS>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</BlipTypeMacOS>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<SUID>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</SUID>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Tag>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</Tag>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Size>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</Size>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Ref>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</Ref>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Offset>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</Offset>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Usage>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</Usage>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Name>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</Name>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Unused2>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</Unused2>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<Unused3>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</Unused3>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
