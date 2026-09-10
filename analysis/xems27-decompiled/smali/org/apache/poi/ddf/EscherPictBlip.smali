.class public final Lorg/apache/poi/ddf/EscherPictBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "EscherPictBlip.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field public static final RECORD_ID_EMF:S = -0xfe6s

.field public static final RECORD_ID_PICT:S = -0xfe4s

.field public static final RECORD_ID_WMF:S = -0xfe5s

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private field_1_UID:[B

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/apache/poi/ddf/EscherPictBlip;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherPictBlip;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    return-void
.end method

.method private static inflatePictureData([B)[B
    .locals 5
    .param p0, "data"    # [B

    .line 126
    :try_start_0
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    .local v0, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 130
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "readBytes":I
    if-lez v3, :cond_0

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 134
    .end local v0    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v4    # "readBytes":I
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/poi/ddf/EscherPictBlip;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x3

    const-string v3, "Possibly corrupt compression or non-compressed data"

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 136
    return-object p0
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 59
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherPictBlip;->readHeader([BI)I

    move-result v0

    .line 60
    .local v0, "bytesAfterHeader":I
    add-int/lit8 v1, p2, 0x8

    .line 62
    .local v1, "pos":I
    const/16 v2, 0x10

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    .line 63
    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    .line 64
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    add-int/lit8 v1, v1, 0x4

    .line 65
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    add-int/lit8 v1, v1, 0x4

    .line 66
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    add-int/lit8 v1, v1, 0x4

    .line 67
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    add-int/lit8 v1, v1, 0x4

    .line 68
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    add-int/lit8 v1, v1, 0x4

    .line 69
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    add-int/lit8 v1, v1, 0x4

    .line 70
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    add-int/lit8 v1, v1, 0x4

    .line 71
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    add-int/lit8 v1, v1, 0x4

    .line 72
    aget-byte v3, p1, v1

    iput-byte v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    add-int/lit8 v1, v1, 0x1

    .line 73
    aget-byte v3, p1, v1

    iput-byte v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    add-int/lit8 v1, v1, 0x1

    .line 75
    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    .line 76
    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherPictBlip;->inflatePictureData([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_pictureData:[B

    goto :goto_0

    .line 86
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_pictureData:[B

    .line 89
    :goto_0
    add-int/lit8 v2, v0, 0x8

    return v2
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 5

    .line 161
    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    sub-int/2addr v3, v1

    iget v4, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    sub-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getCompressedSize()I
    .locals 1

    .line 184
    iget v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3a

    return v0
.end method

.method public getSizeEMU()Ljava/awt/Dimension;
    .locals 3

    .line 175
    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getUID()[B
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    return-object v0
.end method

.method public getUncompressedSize()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 192
    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 95
    move v0, p1

    .line 96
    .local v0, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getOptions()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 97
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, v0, 0x2

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 100
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    const/16 v3, 0x10

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    .line 101
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 102
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 103
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 104
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 105
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 106
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 107
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 108
    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 109
    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 110
    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 112
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length v3, v1

    invoke-static {v1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordId()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result v3

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 115
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x19

    return v1
.end method

.method public setBounds(Ljava/awt/Rectangle;)V
    .locals 2
    .param p1, "bounds"    # Ljava/awt/Rectangle;

    .line 168
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    .line 169
    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    .line 170
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    .line 171
    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iget v1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    .line 172
    return-void
.end method

.method public setCompressed(Z)V
    .locals 1
    .param p1, "compressed"    # Z

    .line 196
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    .line 197
    return-void
.end method

.method public setCompressedSize(I)V
    .locals 0
    .param p1, "compressedSize"    # I

    .line 188
    iput p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    .line 189
    return-void
.end method

.method public setSizeEMU(Ljava/awt/Dimension;)V
    .locals 1
    .param p1, "sizeEMU"    # Ljava/awt/Dimension;

    .line 179
    iget v0, p1, Ljava/awt/Dimension;->width:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    .line 180
    iget v0, p1, Ljava/awt/Dimension;->height:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    .line 181
    return-void
.end method

.method public setUID([B)V
    .locals 0
    .param p1, "uid"    # [B

    .line 149
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    .line 150
    return-void
.end method

.method public setUncompressedSize(I)V
    .locals 0
    .param p1, "uncompressedSize"    # I

    .line 157
    iput p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 202
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_pictureData:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "extraData":Ljava/lang/String;
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

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordId()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Version: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getVersion()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Instance: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getInstance()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  UID: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Uncompressed Size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Bounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getBounds()Ljava/awt/Rectangle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Size in EMU: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getSizeEMU()Ljava/awt/Dimension;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Compressed Size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Compression: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "  Filter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 6
    .param p1, "tab"    # Ljava/lang/String;

    .line 219
    const-string v0, ""

    .line 220
    .local v0, "extraData":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordId()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getVersion()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getInstance()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/poi/ddf/EscherPictBlip;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<UID>0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</UID>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<UncompressedSize>0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</UncompressedSize>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<Bounds>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getBounds()Ljava/awt/Rectangle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "</Bounds>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<SizeInEMU>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getSizeEMU()Ljava/awt/Dimension;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "</SizeInEMU>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<CompressedSize>0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</CompressedSize>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<Compression>0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</Compression>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<Filter>0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</Filter>\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<ExtraData>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</ExtraData>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
