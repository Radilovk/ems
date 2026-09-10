.class public Lcom/isaigu/gymapp/MainActivity;
.super Lcom/isaigu/gymapp/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/isaigu/gymapp/message/EventListener;


# static fields
.field private static final REQUEST_CODE_WRITE_SETTINGS:I = 0x1

.field public static final REQUEST_WRITE_SETTING_PERMISSION:I = 0x3eb

.field private static instance:Lcom/isaigu/gymapp/MainActivity; = null

.field private static proxy:Lcom/danikula/videocache/HttpProxyCacheServer; = null

.field private static final request_code_location_permission:I = 0x2


# instance fields
.field private loadingTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseActivity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/isaigu/gymapp/MainActivity;
    .locals 1

    .line 108
    sget-object v0, Lcom/isaigu/gymapp/MainActivity;->instance:Lcom/isaigu/gymapp/MainActivity;

    return-object v0
.end method

.method public static getProxy()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 1

    .line 114
    sget-object v0, Lcom/isaigu/gymapp/MainActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->newProxy()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/MainActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 117
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/MainActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    return-object v0
.end method

.method private hideSoftInput(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 226
    if-eqz p1, :cond_0

    .line 227
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 228
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 231
    .end local v0    # "manager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private isHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 210
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 211
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 212
    .local v1, "l":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 213
    aget v2, v1, v0

    .local v2, "left":I
    const/4 v3, 0x1

    aget v4, v1, v3

    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 214
    .local v5, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    .line 215
    .local v6, "right":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v6

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 217
    return v0

    .line 219
    :cond_0
    return v3

    .line 222
    .end local v1    # "l":[I
    .end local v2    # "left":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "right":I
    :cond_1
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static newProxy()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 4

    .line 121
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/isaigu/gymapp/MainActivity;->instance:Lcom/isaigu/gymapp/MainActivity;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "videoCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_0
    new-instance v1, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    sget-object v2, Lcom/isaigu/gymapp/MainActivity;->instance:Lcom/isaigu/gymapp/MainActivity;

    invoke-direct {v1, v2}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x40000000

    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->maxCacheSize(J)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    move-result-object v1

    const/16 v2, 0x14

    .line 127
    invoke-virtual {v1, v2}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->maxCacheFilesCount(I)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->cacheDirectory(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->build()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v1

    .line 125
    return-object v1
.end method

.method private requestWriteSettings()V
    .locals 3

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 147
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private requestlLocationPermission()V
    .locals 1

    .line 157
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/isaigu/gymapp/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/isaigu/gymapp/MainActivity;->isHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/MainActivity;->hideSoftInput(Landroid/os/IBinder;)V

    .line 206
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 190
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensityOfGlobal(Landroid/content/res/Resources;)V

    .line 193
    return-object v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 3
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .line 265
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 266
    .local v0, "event":S
    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/MainActivity;->loadingTimer:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 289
    new-instance v1, Lcom/isaigu/gymapp/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/MainActivity$4;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 268
    :cond_1
    const/4 v1, 0x0

    const-string v2, "content"

    invoke-virtual {p1, v2, v1}, Lcom/isaigu/gymapp/message/DataBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 269
    .local v1, "hold":Z
    new-instance v2, Lcom/isaigu/gymapp/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/MainActivity$3;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 286
    nop

    .line 296
    .end local v1    # "hold":Z
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 246
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/MainActivity$2;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/MainActivity;->showMessageDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/MainActivity;->setContentView(I)V

    .line 58
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/utils/Logger;->initContext(Landroid/content/Context;Z)V

    .line 59
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->init()V

    .line 61
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->setLogEnable(Z)V

    .line 62
    sput-object p0, Lcom/isaigu/gymapp/MainActivity;->instance:Lcom/isaigu/gymapp/MainActivity;

    .line 64
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/FileUtils;->initConext(Landroid/content/Context;)V

    .line 65
    const-string v0, "activity oncreate ====="

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->initBle()V

    .line 68
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChangeWithoutRestart(Landroid/app/Activity;)V

    .line 70
    invoke-virtual {p0}, Lcom/isaigu/gymapp/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 71
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/SplashFragment;-><init>()V

    const v2, 0x7f0900a4

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    invoke-static {p0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->init(Landroid/app/Activity;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getScreenHeight(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getScreenWidth(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/MainActivity$1;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    .line 83
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v3, v2}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V

    .line 99
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->setVirtualButtonVisible(Landroid/content/Context;Z)V

    .line 101
    const/16 v1, 0x67

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 102
    const/16 v1, 0x68

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 104
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 235
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseActivity;->onDestroy()V

    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->unInit()V

    .line 237
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->unInitBle()V

    .line 238
    invoke-static {p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V

    .line 239
    const-string v0, "activity onDestroy ====="

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 141
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 142
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/utils/AndroidUtils;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 143
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseActivity;->onStart()V

    .line 135
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/AndroidUtils;->init(Landroid/app/Activity;)V

    .line 136
    return-void
.end method
