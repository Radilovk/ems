.class public final Lorg/apache/poi/ddf/EscherMetafileBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "EscherMetafileBlip.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field public static final RECORD_ID_EMF:S = -0xfe6s

.field public static final RECORD_ID_PICT:S = -0xfe4s

.field public static final RECORD_ID_WMF:S = -0xfe5s

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private field_1_UID:[B

.field private field_2_UID:[B

.field private field_2_cb:I

.field private field_3_rcBounds_x1:I

.field private field_3_rcBounds_x2:I

.field private field_3_rcBounds_y1:I

.field private field_3_rcBounds_y2:I

.field private field_4_ptSize_h:I

.field private field_4_ptSize_w:I

.field private field_5_cbSave:I

.field private field_6_fCompression:B

.field private field_7_fFilter:B

.field private raw_pictureData:[B

.field private remainingData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    return-void
.end method

.method private static inflatePictureData([B)[B
    .locals 8
    .param p0, "data"    # [B

    .prologue
    .line 147
    :try_start_0
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    .local v2, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 152
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v4

    .local v4, "readBytes":I
    if-lez v4, :cond_0

    .line 153
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "readBytes":I
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/poi/ddf/EscherMetafileBlip;->log:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x5

    const-string v7, "Possibly corrupt compression or non-compressed data"

    invoke-virtual {v5, v6, v7, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    .end local p0    # "data":[B
    :goto_1
    return-object p0

    .line 155
    .restart local v0    # "buf":[B
    .restart local v2    # "in":Ljava/util/zip/InflaterInputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "readBytes":I
    .restart local p0    # "data":[B
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_1
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x10

    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherMetafileBlip;->readHeader([BI)I

    move-result v0

    .line 67
    .local v0, "bytesAfterHeader":I
    add-int/lit8 v1, p2, 0x8

    .line 68
    .local v1, "pos":I
    new-array v3, v5, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    .line 69
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    invoke-static {p1, v1, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x10

    .line 71
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getOptions()S

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getSignature()S

    move-result v4

    xor-int/2addr v3, v4

    if-ne v3, v5, :cond_0

    .line 72
    new-array v3, v5, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    .line 73
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    invoke-static {p1, v1, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x10

    .line 76
    :cond_0
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    add-int/lit8 v1, v1, 0x4

    .line 77
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    add-int/lit8 v1, v1, 0x4

    .line 78
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    add-int/lit8 v1, v1, 0x4

    .line 79
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    add-int/lit8 v1, v1, 0x4

    .line 80
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    add-int/lit8 v1, v1, 0x4

    .line 81
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    add-int/lit8 v1, v1, 0x4

    .line 82
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    add-int/lit8 v1, v1, 0x4

    .line 83
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    add-int/lit8 v1, v1, 0x4

    .line 84
    aget-byte v3, p1, v1

    iput-byte v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    add-int/lit8 v1, v1, 0x1

    .line 85
    aget-byte v3, p1, v1

    iput-byte v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    add-int/lit8 v1, v1, 0x1

    .line 87
    iget v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    .line 88
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    iget v4, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    invoke-static {p1, v1, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    add-int/2addr v1, v3

    .line 93
    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    if-nez v3, :cond_2

    .line 94
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    invoke-static {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;->inflatePictureData([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_pictureData:[B

    .line 99
    :goto_0
    sub-int v3, v0, v1

    add-int/2addr v3, p2

    add-int/lit8 v2, v3, 0x8

    .line 100
    .local v2, "remaining":I
    if-lez v2, :cond_1

    .line 101
    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    .line 102
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    invoke-static {p1, v1, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    :cond_1
    add-int/lit8 v3, v0, 0x8

    return v3

    .line 96
    .end local v2    # "remaining":I
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_pictureData:[B

    goto :goto_0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 6

    .prologue
    .line 197
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    iget v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    iget v4, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    iget v5, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getCompressedSize()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    return v0
.end method

.method public getPrimaryUID()[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    return-object v0
.end method

.method public getRecordSize()I
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x3a

    .line 164
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getOptions()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getSignature()S

    move-result v2

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 166
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 168
    :cond_1
    return v0
.end method

.method public getRemainingData()[B
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    return-object v0
.end method

.method public getSignature()S
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 285
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 290
    sget-object v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lorg/apache/poi/ddf/EscherMetafileBlip;->log:Lorg/apache/poi/util/POILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown metafile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 293
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 286
    :pswitch_0
    const/16 v0, 0x3d40

    goto :goto_0

    .line 287
    :pswitch_1
    const/16 v0, 0x2160

    goto :goto_0

    .line 288
    :pswitch_2
    const/16 v0, 0x5420

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch -0xfe6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSizeEMU()Ljava/awt/Dimension;
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getUID()[B
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    return-object v0
.end method

.method public getUncompressedSize()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .prologue
    .line 228
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordId()S

    move-result v1

    invoke-interface {p3, p1, v1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 110
    move v0, p1

    .line 111
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getOptions()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 112
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 113
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 115
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    array-length v2, v2

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getOptions()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getSignature()S

    move-result v2

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 117
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    array-length v2, v2

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 119
    :cond_0
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 120
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 121
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 122
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 123
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 124
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 125
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 126
    iget v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 127
    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 128
    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 130
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    array-length v2, v2

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 131
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    array-length v2, v2

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 135
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordId()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordSize()I

    move-result v3

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordSize()I

    move-result v1

    return v1
.end method

.method public setBounds(Ljava/awt/Rectangle;)V
    .locals 2
    .param p1, "bounds"    # Ljava/awt/Rectangle;

    .prologue
    .line 204
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x1:I

    .line 205
    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y1:I

    .line 206
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_x2:I

    .line 207
    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iget v1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_3_rcBounds_y2:I

    .line 208
    return-void
.end method

.method public setCompressed(Z)V
    .locals 1
    .param p1, "compressed"    # Z

    .prologue
    .line 232
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    .line 233
    return-void

    .line 232
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setCompressedSize(I)V
    .locals 0
    .param p1, "compressedSize"    # I

    .prologue
    .line 224
    iput p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    .line 225
    return-void
.end method

.method public setFilter(B)V
    .locals 0
    .param p1, "filter"    # B

    .prologue
    .line 319
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    .line 320
    return-void
.end method

.method public setPictureData([B)V
    .locals 5
    .param p1, "pictureData"    # [B

    .prologue
    .line 297
    invoke-super {p0, p1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    .line 298
    array-length v3, p1

    invoke-virtual {p0, v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setUncompressedSize(I)V

    .line 305
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 306
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 307
    .local v1, "dos":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v1, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 308
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 309
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->raw_pictureData:[B

    array-length v3, v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setCompressedSize(I)V

    .line 315
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setCompressed(Z)V

    .line 316
    return-void

    .line 310
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/util/zip/DeflaterOutputStream;
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t compress metafile picture data"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setPrimaryUID([B)V
    .locals 0
    .param p1, "primaryUID"    # [B

    .prologue
    .line 185
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    .line 186
    return-void
.end method

.method public setSizeEMU(Ljava/awt/Dimension;)V
    .locals 1
    .param p1, "sizeEMU"    # Ljava/awt/Dimension;

    .prologue
    .line 215
    iget v0, p1, Ljava/awt/Dimension;->width:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_w:I

    .line 216
    iget v0, p1, Ljava/awt/Dimension;->height:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_4_ptSize_h:I

    .line 217
    return-void
.end method

.method public setUID([B)V
    .locals 0
    .param p1, "uid"    # [B

    .prologue
    .line 176
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    .line 177
    return-void
.end method

.method public setUncompressedSize(I)V
    .locals 0
    .param p1, "uncompressedSize"    # I

    .prologue
    .line 193
    iput p1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    .line 194
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 242
    const-string v0, ""

    .line 243
    .local v0, "extraData":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  RecordId: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Version: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getVersion()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Instance: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getInstance()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  UID: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Uncompressed Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getBounds()Ljava/awt/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Size in EMU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getSizeEMU()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Compressed Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Compression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Extra Data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UID2: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n Remaining Data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 262
    const-string v1, ""

    .line 263
    .local v1, "extraData":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getRecordId()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getVersion()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getInstance()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/poi/ddf/EscherMetafileBlip;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<UID>0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_1_UID:[B

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</UID>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<UncompressedSize>0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_cb:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</UncompressedSize>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<Bounds>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getBounds()Ljava/awt/Rectangle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Bounds>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<SizeInEMU>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getSizeEMU()Ljava/awt/Dimension;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</SizeInEMU>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<CompressedSize>0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_5_cbSave:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</CompressedSize>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<Compression>0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_6_fCompression:B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Compression>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<Filter>0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_7_fFilter:B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Filter>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<ExtraData>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</ExtraData>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<RemainingData>0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->remainingData:[B

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</RemainingData>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 264
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  UID2: 0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/poi/ddf/EscherMetafileBlip;->field_2_UID:[B

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
