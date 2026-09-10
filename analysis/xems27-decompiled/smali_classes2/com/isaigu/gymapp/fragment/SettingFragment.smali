.class public Lcom/isaigu/gymapp/fragment/SettingFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "SettingFragment.java"


# static fields
.field private static final REQUEST_CODE_WRITE_SETTINGS:I = 0x2


# instance fields
.field private changeLogo:Landroid/widget/Button;

.field private chinese:Landroid/widget/Button;

.field private cropImageUri:Landroid/net/Uri;

.field private defaultLogo:Landroid/widget/Button;

.field private english:Landroid/widget/Button;

.field private espanol:Landroid/widget/Button;

.field private french:Landroid/widget/Button;

.field private imageUri:Landroid/net/Uri;

.field private lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

.field private logoImage:Landroid/widget/ImageView;

.field private logoImage2:Landroid/widget/ImageView;

.field private logout:Landroid/widget/Button;

.field private originalFile:Ljava/io/File;

.field private poland:Landroid/widget/Button;

.field private portugues:Landroid/widget/Button;

.field private range:Landroid/widget/TextView;

.field private rassia:Landroid/widget/Button;

.field private softwareVersion:Landroid/widget/TextView;

.field private switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

.field private time:Landroid/widget/TextView;

.field private timelength:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;

.field private useTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchToLanguage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/fragment/SettingFragment;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->originalFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createOriImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createCropImageFile(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogoPic_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "imgNameCrop":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.isaigu.gymapp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/CropPicture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, "pictureDirCrop":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 503
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 505
    :cond_0
    const-string v3, ".png"

    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 510
    .local v0, "image":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp image exist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 511
    return-object v0
.end method

.method private createOriImageFile(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogoPic_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "imgNameOri":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/OriPicture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v2, "pictureDirOri":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 486
    :cond_0
    const-string v3, ".png"

    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 491
    .local v0, "image":Ljava/io/File;
    return-object v0
.end method

.method private handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 4
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 163
    .local v1, "content":[B
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 165
    aget-byte v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 167
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method private handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 4
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 179
    .local v1, "content":[B
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 181
    aget-byte v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 182
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 183
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method private initSet()V
    .locals 11

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget v5, v5, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-nez v5, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 199
    .local v4, "value":I
    add-int/lit8 v5, v4, -0x28

    int-to-float v5, v5

    const/high16 v6, 0x43570000    # 215.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 200
    .local v3, "progress":I
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iput v3, v5, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 201
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget v5, v5, Lcom/isaigu/gymapp/bean/UserData;->light:I

    if-gez v5, :cond_0

    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    const/4 v6, 0x0

    iput v6, v5, Lcom/isaigu/gymapp/bean/UserData;->light:I

    .line 204
    :cond_0
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iget v6, v6, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 205
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0d0064

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v10

    iget v10, v10, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v3    # "progress":I
    .end local v4    # "value":I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iget v6, v6, Lcom/isaigu/gymapp/bean/UserData;->light:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(F)V

    .line 212
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0d0064

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v10

    iget v10, v10, Lcom/isaigu/gymapp/bean/UserData;->light:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    new-instance v6, Lcom/isaigu/gymapp/fragment/SettingFragment$3;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$3;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V

    .line 257
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 259
    new-instance v5, Lcom/isaigu/gymapp/fragment/SettingFragment$4;

    invoke-direct {v5, p0, v0}, Lcom/isaigu/gymapp/fragment/SettingFragment$4;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/text/SimpleDateFormat;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    .line 269
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 270
    new-instance v5, Lcom/isaigu/gymapp/fragment/SettingFragment$5;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$5;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    const-wide/32 v6, 0xea60

    const-wide/32 v8, 0xea60

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/utils/TimerUtils;->scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    .line 299
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iget-wide v6, v6, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/mgr/CommonUtils;->formatTime2(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x7f0d0041

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const v9, 0x7f0d005c

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const v9, 0x7f0d0075

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iget-boolean v6, v6, Lcom/isaigu/gymapp/bean/UserData;->leftMode:Z

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    .line 302
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    new-instance v6, Lcom/isaigu/gymapp/fragment/SettingFragment$6;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$6;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V

    .line 311
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget-object v2, v5, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 312
    .local v2, "language":Ljava/lang/String;
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v6, 0x7f030076

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 313
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v6, 0x7f0c0011

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 320
    const-string v5, "bg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 321
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v6, 0x7f030075

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 337
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    new-instance v6, Lcom/isaigu/gymapp/fragment/SettingFragment$7;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$7;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    new-instance v6, Lcom/isaigu/gymapp/fragment/SettingFragment$8;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$8;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    new-instance v6, Lcom/isaigu/gymapp/fragment/SettingFragment$14;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$14;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    new-instance v6, Lcom/isaigu/gymapp/fragment/SettingFragment$15;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$15;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    new-instance v6, Lcom/isaigu/gymapp/fragment/SettingFragment$16;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$16;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    return-void

    .line 207
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "language":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v2    # "language":Ljava/lang/String;
    :cond_3
    const-string v5, "en"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 323
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v6, 0x7f0c0010

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 324
    :cond_4
    goto :goto_1
.end method

.method private requestWriteSettings()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 627
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 631
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private switchToLanguage(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "restart"    # Z

    .prologue
    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f030076

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 449
    const-string v0, "bg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    const v1, 0x7f030075

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 465
    :cond_0
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 468
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 470
    if-eqz p2, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChange(Landroid/app/Activity;)V

    .line 473
    :cond_1
    return-void

    .line 451
    :cond_2
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 453
    :cond_3
    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 1
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseFragment;->handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 150
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 151
    .local v0, "event":S
    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    return-void

    .line 153
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetFirmwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->handleGetHardwareVersion(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 535
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 536
    const/16 v7, 0x3eb

    if-ne p1, v7, :cond_2

    .line 537
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/utils/ImageUtils;->getFileFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 538
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 540
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/isaigu/gymapp/fragment/SettingFragment;->createCropImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 541
    .local v1, "cropPhotoFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    .line 542
    const/4 v6, 0x0

    .line 543
    .local v6, "uri":Landroid/net/Uri;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.isaigu.gymapp.provider"

    .line 544
    invoke-static {v7, v8, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 553
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 554
    new-instance v7, Lcom/isaigu/gymapp/fragment/SettingFragment$17;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$17;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 615
    .end local v1    # "cropPhotoFile":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 549
    .restart local v1    # "cropPhotoFile":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 577
    .end local v1    # "cropPhotoFile":Ljava/io/File;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 581
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    const/16 v7, 0x3ea

    if-ne p1, v7, :cond_4

    .line 583
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 584
    .local v0, "bundle":Landroid/net/Uri;
    if-nez v0, :cond_3

    .line 585
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 586
    .local v3, "face":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 587
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v3, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 588
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 589
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 590
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v7

    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->cropImageUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 595
    .end local v3    # "face":Landroid/graphics/Bitmap;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v7

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 596
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v7

    new-instance v8, Lcom/isaigu/gymapp/fragment/SettingFragment$18;

    invoke-direct {v8, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$18;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 602
    .end local v0    # "bundle":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 603
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 592
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/net/Uri;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 605
    .end local v0    # "bundle":Landroid/net/Uri;
    :cond_4
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 607
    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v7

    const v8, 0x7f0d0044

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 610
    :catch_2
    move-exception v2

    .line 611
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/RangeSeekBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->lightSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 103
    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->range:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->chinese:Landroid/widget/Button;

    .line 106
    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->english:Landroid/widget/Button;

    .line 113
    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->changeLogo:Landroid/widget/Button;

    .line 114
    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    .line 115
    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 118
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logoImage2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 121
    :cond_0
    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->softwareVersion:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->softwareVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->time:Landroid/widget/TextView;

    .line 127
    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timelength:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/SwitchButton;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->switchButton:Lcom/isaigu/gymapp/widget/SwitchButton;

    .line 129
    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->logout:Landroid/widget/Button;

    .line 131
    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->defaultLogo:Landroid/widget/Button;

    .line 133
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->requestWriteSettings()V

    .line 135
    const/16 v1, 0xa

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 136
    const/16 v1, 0x8

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 137
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 619
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onDestroyView()V

    .line 620
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->timer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 621
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment;->useTimer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 622
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseFragment;->onStart()V

    .line 143
    invoke-direct {p0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V

    .line 144
    return-void
.end method

.method protected viewId()I
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f0b0066

    return v0
.end method
