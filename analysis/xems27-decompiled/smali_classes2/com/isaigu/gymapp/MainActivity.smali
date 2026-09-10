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

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseActivity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/isaigu/gymapp/MainActivity;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/isaigu/gymapp/MainActivity;->instance:Lcom/isaigu/gymapp/MainActivity;

    return-object v0
.end method

.method public static getProxy()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/isaigu/gymapp/MainActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->newProxy()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/MainActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 114
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/MainActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    return-object v0
.end method

.method private hideSoftInput(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 225
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 228
    .end local v0    # "manager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private isHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    if-eqz p1, :cond_0

    instance-of v7, p1, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 208
    const/4 v7, 0x2

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 209
    .local v1, "l":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 210
    aget v2, v1, v5

    .local v2, "left":I
    aget v4, v1, v6

    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 211
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 212
    .local v3, "right":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 219
    .end local v0    # "bottom":I
    .end local v1    # "l":[I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_0
    :goto_0
    return v5

    .restart local v0    # "bottom":I
    .restart local v1    # "l":[I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :cond_1
    move v5, v6

    .line 216
    goto :goto_0

    .line 208
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static newProxy()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/isaigu/gymapp/MainActivity;->instance:Lcom/isaigu/gymapp/MainActivity;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "videoCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_0
    new-instance v1, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    sget-object v2, Lcom/isaigu/gymapp/MainActivity;->instance:Lcom/isaigu/gymapp/MainActivity;

    invoke-direct {v1, v2}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x40000000

    .line 123
    invoke-virtual {v1, v2, v3}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->maxCacheSize(J)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    move-result-object v1

    const/16 v2, 0x14

    .line 124
    invoke-virtual {v1, v2}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->maxCacheFilesCount(I)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->cacheDirectory(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->build()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v1

    return-object v1
.end method

.method private requestWriteSettings()V
    .locals 3

    .prologue
    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 144
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private requestlLocationPermission()V
    .locals 3

    .prologue
    .line 154
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/isaigu/gymapp/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/isaigu/gymapp/MainActivity;->isHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/MainActivity;->hideSoftInput(Landroid/os/IBinder;)V

    .line 203
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensityOfGlobal(Landroid/content/res/Resources;)V

    .line 190
    return-object v0
.end method

.method public handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
    .locals 4
    .param p1, "bundle"    # Lcom/isaigu/gymapp/message/DataBundle;

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/isaigu/gymapp/message/DataBundle;->getEvent()S

    move-result v0

    .line 262
    .local v0, "event":S
    packed-switch v0, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 264
    :pswitch_0
    const-string v2, "content"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/isaigu/gymapp/message/DataBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 265
    .local v1, "hold":Z
    new-instance v2, Lcom/isaigu/gymapp/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/MainActivity$3;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 284
    .end local v1    # "hold":Z
    :pswitch_1
    iget-object v2, p0, Lcom/isaigu/gymapp/MainActivity;->loadingTimer:Ljava/util/Timer;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 285
    new-instance v2, Lcom/isaigu/gymapp/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/MainActivity$4;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 243
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/MainActivity$2;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/MainActivity;->showMessageDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f040042

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/MainActivity;->setContentView(I)V

    .line 55
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/utils/Logger;->initContext(Landroid/content/Context;Z)V

    .line 56
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/mgr/DataMgr;->init()V

    .line 58
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/OKHttpUtils;->setLogEnable(Z)V

    .line 59
    sput-object p0, Lcom/isaigu/gymapp/MainActivity;->instance:Lcom/isaigu/gymapp/MainActivity;

    .line 61
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/FileUtils;->initConext(Landroid/content/Context;)V

    .line 62
    const-string v1, "activity oncreate ====="

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->initBle()V

    .line 65
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChangeWithoutRestart(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p0}, Lcom/isaigu/gymapp/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 68
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0f013f

    new-instance v2, Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-direct {v2}, Lcom/isaigu/gymapp/fragment/SplashFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 72
    invoke-static {p0}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->init(Landroid/app/Activity;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getScreenHeight(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getScreenWidth(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/isaigu/gymapp/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/MainActivity$1;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    .line 80
    invoke-virtual {v1, v2, v3}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V

    .line 79
    invoke-static {p0}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    new-instance v3, Lcom/isaigu/gymapp/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/MainActivity$1;-><init>(Lcom/isaigu/gymapp/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V

    .line 96
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->setVirtualButtonVisible(Landroid/content/Context;Z)V

    .line 98
    const/16 v1, 0x67

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 99
    const/16 v1, 0x68

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->attachEventListener(SLcom/isaigu/gymapp/message/EventListener;)V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseActivity;->onDestroy()V

    .line 233
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->unInit()V

    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->unInitBle()V

    .line 235
    invoke-static {p0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->detachEventListener(Lcom/isaigu/gymapp/message/EventListener;)V

    .line 236
    const-string v0, "activity onDestroy ====="

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 138
    invoke-static {p1, p2, p3}, Lcom/isaigu/gymapp/calendar/CalendarEvents;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 139
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/utils/AndroidUtils;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 140
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseActivity;->onStart()V

    .line 132
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/AndroidUtils;->init(Landroid/app/Activity;)V

    .line 133
    return-void
.end method
