.class public Lcom/isaigu/gymapp/utils/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;
    }
.end annotation


# static fields
.field private static DEFAULT_DENSITY:I = 0x0

.field public static final PHOTO_REQUEST_CUT:I = 0x3ea

.field private static final PREFS_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final PREFS_FILE:Ljava/lang/String; = "device_id.xml"

.field public static final SELECT_IMAGE_CODE:I = 0x3e9

.field private static _scaleHeight:F = 0.0f

.field private static _scaleWidth:F = 0.0f

.field private static callbackHashMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context; = null

.field private static defaultHeight:F = 0.0f

.field private static defaultWidth:F = 0.0f

.field private static fontScale:F = 0.0f

.field private static h2:F = 0.0f

.field private static isKeyboardShow:Z = false

.field private static pixelRatio:F = 0.0f

.field private static screenH:I = 0x0

.field private static screenW:I = 0x0

.field public static final select_image_from_ablum_code:I = 0x3eb

.field private static w2:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->DEFAULT_DENSITY:I

    .line 55
    const/high16 v1, 0x44a00000    # 1280.0f

    sput v1, Lcom/isaigu/gymapp/utils/AndroidUtils;->defaultWidth:F

    .line 56
    const/high16 v2, 0x44340000    # 720.0f

    sput v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->defaultHeight:F

    .line 57
    int-to-float v3, v0

    div-float v3, v1, v3

    sput v3, Lcom/isaigu/gymapp/utils/AndroidUtils;->w2:F

    .line 59
    int-to-float v0, v0

    div-float v0, v2, v0

    sput v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->h2:F

    .line 61
    sget v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->screenW:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->_scaleWidth:F

    .line 62
    sget v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->screenH:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sput v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->_scaleHeight:F

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->callbackHashMap:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->isKeyboardShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static catchImageFromCamera(Landroid/support/v4/app/Fragment;Ljava/io/File;)Landroid/net/Uri;
    .locals 4
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "targetFile"    # Ljava/io/File;

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 401
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "imageUri":Landroid/net/Uri;
    goto :goto_0

    .line 403
    .end local v1    # "imageUri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 406
    .restart local v1    # "imageUri":Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 407
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 409
    return-object v1
.end method

.method public static compressImageFile(Ljava/io/File;F)Ljava/io/File;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "scale"    # F

    .line 430
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomePic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "imgNameCrop":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.isaigu.gymapp25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/CropPicture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v1, "pictureDirCrop":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 435
    :cond_0
    const-string v2, ".jpg"

    invoke-static {v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 441
    .local v2, "image":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 443
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 444
    .local v4, "o":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 445
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p1

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p1

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v5, v6

    .line 446
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 447
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 448
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    return-object v2

    .line 450
    .end local v0    # "imgNameCrop":Ljava/lang/String;
    .end local v1    # "pictureDirCrop":Ljava/io/File;
    .end local v2    # "image":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cropImage(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "targetUri"    # Landroid/net/Uri;

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    const-string v2, "image/*"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v2, "outputX"

    const/16 v3, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string v2, "outputY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string v2, "output"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 354
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 359
    return-void
.end method

.method public static cropImage(Landroid/support/v4/app/Fragment;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/support/v4/app/Fragment;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "targetUri"    # Landroid/net/Uri;

    .line 362
    const/16 v0, 0xfa

    invoke-static {p0, p1, p2, v0, v0}, Lcom/isaigu/gymapp/utils/AndroidUtils;->cropImage(Landroid/support/v4/app/Fragment;Landroid/net/Uri;Landroid/net/Uri;II)V

    .line 364
    return-void
.end method

.method public static cropImage(Landroid/support/v4/app/Fragment;Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 3
    .param p0, "context"    # Landroid/support/v4/app/Fragment;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "targetUri"    # Landroid/net/Uri;
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    const-string v1, "outputX"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v1, "outputY"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 384
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    :cond_0
    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 389
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outputFormat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "noFaceDetection"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 395
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 464
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static disableShowInput(Landroid/widget/EditText;)V
    .locals 6
    .param p0, "et"    # Landroid/widget/EditText;

    .line 413
    const-class v0, Landroid/widget/EditText;

    .line 416
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/widget/EditText;>;"
    :try_start_0
    const-string v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 417
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 418
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_0

    .line 419
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 422
    :goto_0
    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpVal"    # F

    .line 336
    nop

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 336
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static declared-synchronized getAndroidUUID()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/isaigu/gymapp/utils/AndroidUtils;

    monitor-enter v0

    .line 251
    :try_start_0
    sget-object v1, Lcom/isaigu/gymapp/utils/AndroidUtils;->context:Landroid/content/Context;

    const-string v2, "device_id.xml"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "device_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "deviceId":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 255
    monitor-exit v0

    return-object v2

    .line 259
    :cond_0
    :try_start_1
    sget-object v3, Lcom/isaigu/gymapp/utils/AndroidUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v3

    .line 263
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 265
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 267
    :cond_1
    :try_start_3
    sget-object v3, Lcom/isaigu/gymapp/utils/AndroidUtils;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 268
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .line 271
    goto :goto_1

    .line 269
    :catch_1
    move-exception v3

    .line 270
    .restart local v3    # "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 273
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    :try_start_4
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 276
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "device_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    monitor-exit v0

    return-object v2

    .line 250
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "deviceId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    .line 162
    sget-object v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/utils/AndroidUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 478
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 479
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 480
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 481
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 472
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 473
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 474
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 475
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 157
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 158
    .local v1, "version":Ljava/lang/String;
    return-object v1
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .line 78
    sput-object p0, Lcom/isaigu/gymapp/utils/AndroidUtils;->context:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 81
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->screenW:I

    .line 84
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->screenH:I

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    sput v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->fontScale:F

    .line 86
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->pixelRatio:F

    .line 88
    sget v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->screenW:I

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/utils/AndroidUtils;->defaultWidth:F

    div-float/2addr v2, v3

    sput v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->_scaleWidth:F

    .line 89
    sget v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->screenH:I

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/utils/AndroidUtils;->defaultHeight:F

    div-float/2addr v2, v3

    sput v2, Lcom/isaigu/gymapp/utils/AndroidUtils;->_scaleHeight:F

    .line 90
    return-void
.end method

.method public static installSlient(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abspath"    # Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/isaigu/gymapp/utils/AndroidUtils$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/utils/AndroidUtils$1;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lcom/isaigu/gymapp/utils/AndroidUtils$1;->start()V

    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public static intIP2StringIP(I)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isVirtualButtonHide(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    :try_start_0
    const-class v0, Landroid/provider/Settings$System;

    const-string v1, "SHOW_NAVIGATION_BAR"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getClassFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "value":Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 97
    .end local v0    # "field":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    const-class v3, Landroid/provider/Settings$System;

    const-string v4, "HIDER_BUTTON_SHOW"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getClassFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    .local v3, "fieldValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 105
    .local v4, "hideValue":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 106
    .end local v3    # "fieldValue":Ljava/lang/String;
    .end local v4    # "hideValue":Ljava/lang/Integer;
    :catch_1
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "full_screen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    .local v2, "fullscreen":I
    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 115
    .end local v2    # "fullscreen":I
    :catch_2
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 524
    sget-object v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->callbackHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;

    .line 525
    .local v0, "callback":Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 526
    aget-object v2, p2, v1

    aget v3, p3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v2, p1, v3}, Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;->onRequestPermission(Ljava/lang/String;IZ)V

    .line 528
    :cond_1
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p2, v1

    .line 532
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    .line 533
    .local v4, "shouldShow":Z
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "should show : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 528
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "shouldShow":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    :cond_2
    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 468
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "permissionString"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;

    .line 508
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 510
    if-eqz p3, :cond_1

    .line 511
    invoke-interface {p3, p1, p2, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;->onRequestPermission(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 514
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->callbackHashMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 517
    :cond_1
    :goto_0
    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "permissionString"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;

    .line 519
    sget-object v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->callbackHashMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 521
    return-void
.end method

.method public static scaleSize(I)F
    .locals 2
    .param p0, "size"    # I

    .line 492
    int-to-float v0, p0

    sget v1, Lcom/isaigu/gymapp/utils/AndroidUtils;->_scaleWidth:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static selectImageFromCamera(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "code"    # I

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 333
    return-void
.end method

.method public static selectImageFromGallery(Landroid/support/v4/app/Fragment;ILjava/io/File;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/support/v4/app/Fragment;
    .param p1, "code"    # I
    .param p2, "targetFile"    # Ljava/io/File;

    .line 311
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 315
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "imageUri":Landroid/net/Uri;
    goto :goto_0

    .line 317
    .end local v1    # "imageUri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 320
    .restart local v1    # "imageUri":Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-object v1

    .line 324
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "imageUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setKeyBoardVisible(Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .line 166
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 167
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 168
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 174
    .end local v0    # "manager":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void
.end method

.method public static setSpText(I)F
    .locals 5
    .param p0, "size"    # I

    .line 501
    sget v0, Lcom/isaigu/gymapp/utils/AndroidUtils;->_scaleWidth:F

    sget v1, Lcom/isaigu/gymapp/utils/AndroidUtils;->_scaleHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 502
    .local v0, "scale":F
    sget v1, Lcom/isaigu/gymapp/utils/AndroidUtils;->fontScale:F

    .line 503
    .local v1, "fontSize":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v3, p0

    mul-float v3, v3, v0

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/isaigu/gymapp/utils/AndroidUtils;->fontScale:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/isaigu/gymapp/utils/AndroidUtils;->screenW:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/isaigu/gymapp/utils/AndroidUtils;->screenH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 504
    int-to-float v2, p0

    mul-float v2, v2, v0

    div-float/2addr v2, v1

    return v2
.end method

.method public static setVirtualButtonVisible(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "visible"    # Z

    .line 123
    const-string v0, "error"

    :try_start_0
    const-class v1, Landroid/provider/Settings$System;

    const-string v2, "SHOW_NAVIGATION_BAR"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getClassFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    .local v1, "fieldValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .end local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1
    const-class v3, Landroid/provider/Settings$System;

    const-string v4, "HIDER_BUTTON_SHOW"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getClassFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, "fValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .end local v3    # "fValue":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 137
    :catch_1
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "full_screen_mode"

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    goto :goto_4

    .line 144
    :catch_2
    move-exception v1

    .line 145
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 457
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 458
    .local v0, "wrappedDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 459
    return-object v0
.end method
