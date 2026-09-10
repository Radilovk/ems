.class public Lcom/isaigu/gymapp/CrashApplication;
.super Landroid/app/Application;
.source "CrashApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/CrashApplication$MyContextWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/FileUtils;->initConext(Landroid/content/Context;)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 39
    invoke-static {p0}, Lme/jessyan/autosize/AutoSize;->initCompatMultiProcess(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/AndroidCrashHandler;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/CrashApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/AndroidCrashHandler;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "crashHandler":Lcom/isaigu/gymapp/AndroidCrashHandler;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 42
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 77
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 78
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 82
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 84
    return-void
.end method
