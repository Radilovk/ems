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

    .prologue
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

    .prologue
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/HPSFException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormatTag()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lorg/apache/poi/hpsf/HPSFException;

    const-string v1, "Clipboard Format Tag of Thumbnail must be CFTAG_WINDOWS."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getClipboardFormatTag()J
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    int-to-long v0, v2

    .line 207
    .local v0, "clipboardFormatTag":J
    return-wide v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    return-object v0
.end method

.method public getThumbnailAsWMF()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/HPSFException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormatTag()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 261
    new-instance v3, Lorg/apache/poi/hpsf/HPSFException;

    const-string v4, "Clipboard Format Tag of Thumbnail must be CFTAG_WINDOWS."

    invoke-direct {v3, v4}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getClipboardFormat()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 264
    new-instance v3, Lorg/apache/poi/hpsf/HPSFException;

    const-string v4, "Clipboard Format of Thumbnail must be CF_METAFILEPICT."

    invoke-direct {v3, v4}, Lorg/apache/poi/hpsf/HPSFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Thumbnail;->getThumbnail()[B

    move-result-object v0

    .line 268
    .local v0, "thumbnail":[B
    array-length v3, v0

    add-int/lit8 v2, v3, -0x14

    .line 269
    .local v2, "wmfImageLength":I
    new-array v1, v2, [B

    .line 270
    .local v1, "wmfImage":[B
    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    return-object v1
.end method

.method public setThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .prologue
    .line 184
    iput-object p1, p0, Lorg/apache/poi/hpsf/Thumbnail;->_thumbnailData:[B

    .line 185
    return-void
.end method
