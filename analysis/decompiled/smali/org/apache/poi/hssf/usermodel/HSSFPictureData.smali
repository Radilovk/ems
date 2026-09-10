.class public Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
.super Ljava/lang/Object;
.source "HSSFPictureData.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PictureData;


# static fields
.field public static final FORMAT_MASK:S = -0x10s

.field public static final MSOBI_DIB:S = 0x7a80s

.field public static final MSOBI_EMF:S = 0x3d40s

.field public static final MSOBI_JPEG:S = 0x46a0s

.field public static final MSOBI_PICT:S = 0x5420s

.field public static final MSOBI_PNG:S = 0x6e00s

.field public static final MSOBI_WMF:S = 0x2160s


# instance fields
.field private blip:Lorg/apache/poi/ddf/EscherBlipRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V
    .locals 0
    .param p1, "blip"    # Lorg/apache/poi/ddf/EscherBlipRecord;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    .line 56
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 63
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    .line 67
    .local v0, "pictureData":[B
    invoke-static {v0, v4}, Lorg/apache/poi/util/PngUtils;->matchesPngHeader([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    array-length v2, v0

    add-int/lit8 v2, v2, -0x10

    new-array v1, v2, [B

    .line 70
    .local v1, "png":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    move-object v0, v1

    .line 74
    .end local v1    # "png":[B
    :cond_0
    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v0

    add-int/lit16 v0, v0, 0xfe8

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    const-string v0, "image/unknown"

    :goto_0
    return-object v0

    .line 120
    :pswitch_0
    const-string v0, "image/x-wmf"

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v0, "image/x-emf"

    goto :goto_0

    .line 124
    :pswitch_2
    const-string v0, "image/x-pict"

    goto :goto_0

    .line 126
    :pswitch_3
    const-string v0, "image/png"

    goto :goto_0

    .line 128
    :pswitch_4
    const-string v0, "image/jpeg"

    goto :goto_0

    .line 130
    :pswitch_5
    const-string v0, "image/bmp"

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch -0xfe6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getPictureType()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 149
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 151
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 153
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 155
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 157
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 159
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch -0xfe6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public suggestFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;->blip:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordId()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    const-string v0, ""

    :goto_0
    return-object v0

    .line 98
    :pswitch_0
    const-string/jumbo v0, "wmf"

    goto :goto_0

    .line 100
    :pswitch_1
    const-string v0, "emf"

    goto :goto_0

    .line 102
    :pswitch_2
    const-string v0, "pict"

    goto :goto_0

    .line 104
    :pswitch_3
    const-string v0, "png"

    goto :goto_0

    .line 106
    :pswitch_4
    const-string v0, "jpeg"

    goto :goto_0

    .line 108
    :pswitch_5
    const-string v0, "dib"

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch -0xfe6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
