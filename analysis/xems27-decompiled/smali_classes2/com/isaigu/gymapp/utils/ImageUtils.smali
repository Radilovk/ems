.class public Lcom/isaigu/gymapp/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "requiredWidth"    # I
    .param p2, "requiredHeight"    # I

    .line 158
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 159
    .local v0, "width":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 160
    .local v1, "height":I
    const/4 v2, 0x1

    .line 161
    .local v2, "inSampleSize":I
    if-gt v0, p1, :cond_0

    if-le v1, p2, :cond_2

    .line 163
    :cond_0
    int-to-float v3, v0

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 165
    .local v3, "widthRatio":I
    int-to-float v4, v1

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 168
    .local v4, "heightRatio":I
    if-ge v3, v4, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v2, v5

    .line 170
    .end local v3    # "widthRatio":I
    .end local v4    # "heightRatio":I
    :cond_2
    return v2
.end method

.method private static createTemporalFileFrom(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "targetFile":Ljava/io/File;
    if-eqz p1, :cond_2

    .line 385
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 387
    .local v1, "buffer":[B
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.isaigu.gymapp25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/CropPicture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 391
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 392
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 391
    const-string v4, ".png"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 404
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 406
    .local v3, "outputStream":Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "read":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 407
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 412
    :try_start_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_1

    .line 413
    :catch_0
    move-exception v4

    .line 414
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    .end local v1    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "read":I
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 63
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x1

    .line 65
    .local v2, "kind":I
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 66
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p0, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 77
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :goto_1
    goto :goto_3

    .line 78
    :catch_0
    move-exception v3

    .line 81
    goto :goto_3

    .line 76
    :catchall_0
    move-exception v3

    .line 77
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    goto :goto_2

    .line 78
    :catch_1
    move-exception v4

    .line 81
    :goto_2
    throw v3

    .line 73
    :catch_2
    move-exception v3

    .line 77
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .line 71
    :catch_3
    move-exception v3

    .line 77
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 82
    :goto_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 83
    const/4 v3, 0x2

    invoke-static {v0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    :cond_1
    return-object v0
.end method

.method public static createVideoThumbnailBytes(Ljava/lang/String;II)[B
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 54
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/utils/ImageUtils;->createVideoThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 58
    .local v2, "bytes":[B
    return-object v2
.end method

.method public static decodeSampledBitmap(Ljava/io/FileInputStream;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "is"    # Ljava/io/FileInputStream;
    .param p1, "requiredWidth"    # I
    .param p2, "requiredHeight"    # I

    .line 123
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 127
    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/utils/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 129
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 130
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSampledBitmapFromDisk(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "descriptor"    # Ljava/io/FileDescriptor;
    .param p1, "requiredWidth"    # I
    .param p2, "requiredHeight"    # I

    .line 109
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    .local v1, "outPadding":Landroid/graphics/Rect;
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/utils/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static decodeSampledBitmapFromDisk(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "requiredWidth"    # I
    .param p2, "requiredHeight"    # I

    .line 138
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/utils/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 145
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "requiredWidth"    # I
    .param p3, "requiredHeight"    # I

    .line 94
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/utils/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    const-string v4, "_data=? "

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 242
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    nop

    .line 244
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 243
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 245
    .local v2, "id":I
    const-string v3, "content://media/external/images/media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 246
    .local v3, "baseUri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 248
    .end local v2    # "id":I
    .end local v3    # "baseUri":Landroid/net/Uri;
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 251
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 250
    return-object v3
.end method

.method private static getFileFromContentUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .locals 11
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 319
    if-nez p0, :cond_0

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 325
    .local v0, "file":Ljava/io/File;
    const-string v1, "_data"

    const-string v2, "_display_name"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 327
    .local v8, "contentResolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 329
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 330
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 331
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "filePath":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "fileName":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 334
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 335
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 337
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-lez v7, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 338
    :cond_2
    invoke-static {p1, p0, v4}, Lcom/isaigu/gymapp/utils/ImageUtils;->getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 341
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 344
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public static getFileFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 298
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 299
    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "schemeString":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ImageUtils;->getFileFromContentUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 304
    :cond_1
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 307
    :cond_2
    return-object v0
.end method

.method public static getPathFromInputStreamUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 358
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 360
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 361
    invoke-static {p0, v0, p2}, Lcom/isaigu/gymapp/utils/ImageUtils;->createTemporalFileFrom(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 362
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 368
    .end local v2    # "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 369
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v2

    .line 373
    goto :goto_4

    .line 372
    :cond_0
    :goto_0
    goto :goto_4

    .line 367
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 364
    :catch_1
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 369
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 368
    :goto_1
    if-eqz v0, :cond_1

    .line 369
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 371
    :catch_2
    move-exception v3

    goto :goto_3

    .line 372
    :cond_1
    :goto_2
    nop

    .line 373
    :goto_3
    throw v2

    .line 376
    :cond_2
    :goto_4
    return-object v1
.end method

.method public static getRealPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .local v0, "sdkVersion":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 183
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ImageUtils;->getRealPathFromUriAboveApi19(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 185
    :cond_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ImageUtils;->getRealPathFromUriBelowAPI19(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getRealPathFromUriAboveApi19(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 212
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "documentId":Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/ImageUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 217
    .local v2, "id":Ljava/lang/String;
    const-string v4, "_id=?"

    .line 218
    .local v4, "selection":Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    .line 219
    .local v3, "selectionArgs":[Ljava/lang/String;
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v5, v4, v3}, Lcom/isaigu/gymapp/utils/ImageUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/ImageUtils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const-string v3, "content://downloads/public_downloads"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 222
    .local v3, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v3, v2, v2}, Lcom/isaigu/gymapp/utils/ImageUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 220
    .end local v3    # "contentUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    nop

    .line 224
    .end local v1    # "documentId":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    invoke-static {p0, p1, v2, v2}, Lcom/isaigu/gymapp/utils/ImageUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 227
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static getRealPathFromUriBelowAPI19(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 197
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/isaigu/gymapp/utils/ImageUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 45
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "width":Ljava/lang/String;
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "height":Ljava/lang/String;
    new-instance v3, Landroid/graphics/Point;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 292
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.downloads.documents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 284
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.media.documents"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
