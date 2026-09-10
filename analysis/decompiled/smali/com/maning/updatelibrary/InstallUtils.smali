.class public Lcom/maning/updatelibrary/InstallUtils;
.super Ljava/lang/Object;
.source "InstallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;,
        Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;,
        Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isDownloading:Z

.field private static mContext:Landroid/content/Context;

.field private static mDownloadCallBack:Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

.field private static mInstance:Lcom/maning/updatelibrary/InstallUtils;


# instance fields
.field private filePath:Ljava/lang/String;

.field private httpUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/maning/updatelibrary/InstallUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/maning/updatelibrary/InstallUtils;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maning/updatelibrary/InstallUtils;->isDownloading:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/maning/updatelibrary/InstallUtils;->isDownloading:Z

    return p0
.end method

.method static synthetic access$100()Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/maning/updatelibrary/InstallUtils;->mDownloadCallBack:Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maning/updatelibrary/InstallUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maning/updatelibrary/InstallUtils;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/maning/updatelibrary/InstallUtils;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/maning/updatelibrary/InstallUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cancleDownload()V
    .locals 1

    .prologue
    .line 200
    const-class v0, Lcom/maning/updatelibrary/InstallUtils;

    invoke-static {v0}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->cancle(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public static checkInstallPermission(Landroid/app/Activity;Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "installPermissionCallBack"    # Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;

    .prologue
    .line 286
    invoke-static {p0}, Lcom/maning/updatelibrary/InstallUtils;->hasInstallPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    if-eqz p1, :cond_0

    .line 288
    invoke-interface {p1}, Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;->onGranted()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {p0, p1}, Lcom/maning/updatelibrary/InstallUtils;->openInstallPermissionSetting(Landroid/app/Activity;Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;)V

    goto :goto_0
.end method

.method public static hasInstallPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static installAPK(Landroid/app/Activity;Ljava/lang/String;Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;

    .prologue
    .line 224
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/maning/updatelibrary/utils/MNUtils;->changeApkFileMode(Ljava/io/File;)V

    .line 225
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "apkFile":Ljava/io/File;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 232
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".updateFileProvider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "authority":Ljava/lang/String;
    invoke-static {p0, v2, v0}, Lcom/maning/updatelibrary/MNUpdateApkFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 238
    .end local v2    # "authority":Ljava/lang/String;
    .local v1, "apkUri":Landroid/net/Uri;
    :goto_0
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    new-instance v5, Lcom/maning/updatelibrary/utils/ActResultRequest;

    invoke-direct {v5, p0}, Lcom/maning/updatelibrary/utils/ActResultRequest;-><init>(Landroid/app/Activity;)V

    new-instance v6, Lcom/maning/updatelibrary/InstallUtils$2;

    invoke-direct {v6, p2}, Lcom/maning/updatelibrary/InstallUtils$2;-><init>(Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;)V

    invoke-virtual {v5, v4, v6}, Lcom/maning/updatelibrary/utils/ActResultRequest;->startForResult(Landroid/content/Intent;Lcom/maning/updatelibrary/utils/ActForResultCallback;)V

    .line 255
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "apkUri":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 236
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "apkUri":Landroid/net/Uri;
    goto :goto_0

    .line 250
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "apkUri":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_0

    .line 252
    invoke-interface {p2, v3}, Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;->onFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static installAPKWithBrower(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "httpUrlApk"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 265
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .local v1, "viewIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public static isDownloading()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/maning/updatelibrary/InstallUtils;->isDownloading:Z

    return v0
.end method

.method public static openInstallPermissionSetting(Landroid/app/Activity;Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "installPermissionCallBack"    # Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;

    .prologue
    .line 315
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 317
    .local v1, "packageURI":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/maning/updatelibrary/utils/ActResultRequest;

    invoke-direct {v2, p0}, Lcom/maning/updatelibrary/utils/ActResultRequest;-><init>(Landroid/app/Activity;)V

    new-instance v3, Lcom/maning/updatelibrary/InstallUtils$3;

    invoke-direct {v3, p1}, Lcom/maning/updatelibrary/InstallUtils$3;-><init>(Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;)V

    invoke-virtual {v2, v0, v3}, Lcom/maning/updatelibrary/utils/ActResultRequest;->startForResult(Landroid/content/Intent;Lcom/maning/updatelibrary/utils/ActForResultCallback;)V

    .line 342
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "packageURI":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-eqz p1, :cond_0

    .line 338
    invoke-interface {p1}, Lcom/maning/updatelibrary/InstallUtils$InstallPermissionCallBack;->onGranted()V

    goto :goto_0
.end method

.method public static setDownloadCallBack(Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;)V
    .locals 1
    .param p0, "downloadCallBack"    # Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    .prologue
    .line 76
    sget-boolean v0, Lcom/maning/updatelibrary/InstallUtils;->isDownloading:Z

    if-eqz v0, :cond_0

    .line 77
    sput-object p0, Lcom/maning/updatelibrary/InstallUtils;->mDownloadCallBack:Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    .line 79
    :cond_0
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/maning/updatelibrary/InstallUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/maning/updatelibrary/InstallUtils;->mContext:Landroid/content/Context;

    .line 90
    sget-object v0, Lcom/maning/updatelibrary/InstallUtils;->mInstance:Lcom/maning/updatelibrary/InstallUtils;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/maning/updatelibrary/InstallUtils;

    invoke-direct {v0}, Lcom/maning/updatelibrary/InstallUtils;-><init>()V

    sput-object v0, Lcom/maning/updatelibrary/InstallUtils;->mInstance:Lcom/maning/updatelibrary/InstallUtils;

    .line 93
    :cond_0
    sget-object v0, Lcom/maning/updatelibrary/InstallUtils;->mInstance:Lcom/maning/updatelibrary/InstallUtils;

    return-object v0
.end method


# virtual methods
.method public setApkPath(Ljava/lang/String;)Lcom/maning/updatelibrary/InstallUtils;
    .locals 1
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/maning/updatelibrary/InstallUtils;->filePath:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/maning/updatelibrary/InstallUtils;->mInstance:Lcom/maning/updatelibrary/InstallUtils;

    return-object v0
.end method

.method public setApkUrl(Ljava/lang/String;)Lcom/maning/updatelibrary/InstallUtils;
    .locals 1
    .param p1, "apkUrl"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/maning/updatelibrary/InstallUtils;->httpUrl:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/maning/updatelibrary/InstallUtils;->mInstance:Lcom/maning/updatelibrary/InstallUtils;

    return-object v0
.end method

.method public setCallBack(Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;)Lcom/maning/updatelibrary/InstallUtils;
    .locals 1
    .param p1, "downloadCallBack"    # Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    .prologue
    .line 125
    sput-object p1, Lcom/maning/updatelibrary/InstallUtils;->mDownloadCallBack:Lcom/maning/updatelibrary/InstallUtils$DownloadCallBack;

    .line 126
    sget-object v0, Lcom/maning/updatelibrary/InstallUtils;->mInstance:Lcom/maning/updatelibrary/InstallUtils;

    return-object v0
.end method

.method public startDownload()V
    .locals 2

    .prologue
    .line 134
    sget-boolean v0, Lcom/maning/updatelibrary/InstallUtils;->isDownloading:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->cancleDownload()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/maning/updatelibrary/InstallUtils;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/maning/updatelibrary/InstallUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maning/updatelibrary/utils/MNUtils;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maning/updatelibrary/InstallUtils;->filePath:Ljava/lang/String;

    .line 142
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/maning/updatelibrary/InstallUtils;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/maning/updatelibrary/utils/MNUtils;->changeApkFileMode(Ljava/io/File;)V

    .line 144
    invoke-static {}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->with()Lcom/maning/updatelibrary/http/DownloadFileUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/maning/updatelibrary/InstallUtils;->filePath:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->downloadPath(Ljava/lang/String;)Lcom/maning/updatelibrary/http/DownloadFileUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/maning/updatelibrary/InstallUtils;->httpUrl:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v1}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->url(Ljava/lang/String;)Lcom/maning/updatelibrary/http/DownloadFileUtils;

    move-result-object v0

    const-class v1, Lcom/maning/updatelibrary/InstallUtils;

    .line 147
    invoke-virtual {v0, v1}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->tag(Ljava/lang/Object;)Lcom/maning/updatelibrary/http/DownloadFileUtils;

    move-result-object v0

    new-instance v1, Lcom/maning/updatelibrary/InstallUtils$1;

    invoke-direct {v1, p0}, Lcom/maning/updatelibrary/InstallUtils$1;-><init>(Lcom/maning/updatelibrary/InstallUtils;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/maning/updatelibrary/http/DownloadFileUtils;->execute(Lcom/maning/updatelibrary/http/AbsFileProgressCallback;)V

    .line 197
    return-void
.end method
