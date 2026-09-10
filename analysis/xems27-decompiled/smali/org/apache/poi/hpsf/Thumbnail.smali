.class public final Lorg/apache/poi/hpsf/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# static fields
.field public static final CFTAG_FMTID:I = -0x3

.field public static final CFTAG_MACINTOSH:I = -0x2

.field public static final CFTAG_NODATA:I = 0x0

.field public static final CFTAG_WINDOWS:I = -0x1

.field public static final CF_BITMAP:I = 0x2

.field public static final CF_DIB:I = 0x8

.field public static final CF_ENHMETAFILE:I = 0xe

.field public static final CF_METAFILEPICT:I = 0x3

.field public static final OFFSET_CF:I = 0x8

.field public static final OFFSET_CFTAG:I = 0x4

.field public static final OFFSET_WMFDATA:I = 0x14


# instance fields
.field private _thumbnailData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    .line 144
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "thumbnailData"    # [B

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    .line 156
    iput-object p1, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    .line 157
    return-void
.end method


# virtual methods
.method public getClipboardFormat()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/HPSFException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormatTag()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 234
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/HPSFException;

    const-string v1, "Clipboard Format Tag of Thumbnail must be CFTAG_WINDOWS."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClipboardFormatTag()J
    .locals 2

    .line 205
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    .line 207
    .local v0, "clipboardFormatTag":J
    return-wide v0
.end method

.method public getThumbnail()[B
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    return-object v0
.end method

.method public getThumbnailAsWMF()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/HPSFException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormatTag()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 263
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormat()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object v0

    .line 268
    .local v0, "thumbnail":[B
    array-length v1, v0

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    .line 269
    .local v1, "wmfImageLength":I
    new-array v3, v1, [B

    .line 270
    .local v3, "wmfImage":[B
    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    return-object v3

    .line 264
    .end local v0    # "thumbnail":[B
    .end local v1    # "wmfImageLength":I
    .end local v3    # "wmfImage":[B
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/HPSFException;

    const-string v1, "Clipboard Format of Thumbnail must be CF_METAFILEPICT."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    new-instance v0, Lorg/apache/poi/hpsf/HPSFException;

    const-string v1, "Clipboard Format Tag of Thumbnail must be CFTAG_WINDOWS."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .line 184
    iput-object p1, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    .line 185
    return-void
.end method
