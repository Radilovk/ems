.class public Lcom/isaigu/gymapp/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;

.field private loadingView:Landroid/view/View;

.field private messageDialog:Landroid/support/v7/app/AlertDialog;

.field private statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/BaseActivity;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/BaseActivity;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 28
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->messageDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method public static getActivityBrightness(Landroid/app/Activity;)F
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 306
    .local v0, "localWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 307
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return v2
.end method

.method public static setActivityBrightness(FLandroid/app/Activity;)V
    .locals 2
    .param p0, "paramFloat"    # F
    .param p1, "activity"    # Landroid/app/Activity;

    .line 298
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 299
    .local v0, "localWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 300
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 302
    return-void
.end method


# virtual methods
.method public closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    .locals 1
    .param p1, "baseDialogFragment"    # Lcom/isaigu/gymapp/BaseDialogFragment;

    .line 351
    if-eqz p1, :cond_0

    .line 352
    :try_start_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 357
    :goto_1
    return-void
.end method

.method public dismissLoadingDialog()V
    .locals 1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/LoadingDialog;->cancel()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public dismissStatusDialog()V
    .locals 1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->cancel()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getGlobalFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .line 293
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideVirtualButton()V
    .locals 3

    .line 267
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    .line 274
    .local v1, "uiOptions":I
    const/16 v2, 0x1706

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 275
    new-instance v2, Lcom/isaigu/gymapp/BaseActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/BaseActivity$7;-><init>(Lcom/isaigu/gymapp/BaseActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 283
    return-void
.end method

.method public isFragmentShow(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 253
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getGlobalFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 254
    .local v0, "fragmentList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 255
    monitor-enter v0

    .line 256
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 257
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 260
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 263
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 49
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->setContentView(I)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->handler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, " "

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->toast:Landroid/widget/Toast;

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 361
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 362
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 246
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 250
    return-void
.end method

.method public replace(ILcom/isaigu/gymapp/BaseFragment;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "fragment"    # Lcom/isaigu/gymapp/BaseFragment;

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getGlobalFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 324
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 325
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 326
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    nop

    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public replace(ILcom/isaigu/gymapp/BaseFragment;Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "fragment"    # Lcom/isaigu/gymapp/BaseFragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getGlobalFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 313
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 314
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 315
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    nop

    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public runDelay(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method public showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    .locals 5
    .param p1, "baseDialogFragment"    # Lcom/isaigu/gymapp/BaseDialogFragment;

    .line 334
    if-eqz p1, :cond_2

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getGlobalFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 337
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    return-void

    .line 340
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    goto :goto_0

    .line 341
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensityOfGlobal(Landroid/content/res/Resources;)V

    .line 342
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getGlobalFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/isaigu/gymapp/BaseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 344
    .end local v0    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    nop

    .line 347
    :goto_2
    return-void
.end method

.method public showDialogWithImage(ILjava/lang/String;)V
    .locals 1
    .param p1, "imgId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;->build()Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setShowWithStatusImage(ILjava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public showDialogWithImage(ILjava/lang/String;JLjava/lang/Runnable;)V
    .locals 1
    .param p1, "imgId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "dismissDelay"    # J
    .param p5, "calllback"    # Ljava/lang/Runnable;

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/BaseActivity;->showDialogWithImage(ILjava/lang/String;)V

    .line 152
    new-instance v0, Lcom/isaigu/gymapp/BaseActivity$3;

    invoke-direct {v0, p0, p5}, Lcom/isaigu/gymapp/BaseActivity$3;-><init>(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 160
    return-void
.end method

.method public showLoadingDialog()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->setCancelable(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->setCancelOutside(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->setShowMessage(Z)Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/LoadingDialog$Builder;->create()Lcom/isaigu/gymapp/widget/LoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;

    .line 167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->loadingDialog:Lcom/isaigu/gymapp/widget/LoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/LoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public showLoadingDialog(J)V
    .locals 1
    .param p1, "dismissDelay"    # J

    .line 176
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->showLoadingDialog()V

    .line 177
    new-instance v0, Lcom/isaigu/gymapp/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/BaseActivity$4;-><init>(Lcom/isaigu/gymapp/BaseActivity;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 182
    return-void
.end method

.method public showLoadingDialogWithImage(ILjava/lang/String;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;->build()Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setShowWithStatusImage(ILjava/lang/String;)V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public showLoadingDialogWithText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;->build()Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setShowWithProgressText(Ljava/lang/String;)V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_1
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public showLoadingDialogWithText(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;->build()Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->setShowWithProgressText(Ljava/lang/String;I)V

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->statusLoadingDialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public showLoadingDialogWithText(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "dismissDelay"    # J

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/BaseActivity;->showLoadingDialogWithText(Ljava/lang/String;I)V

    .line 129
    new-instance v0, Lcom/isaigu/gymapp/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/BaseActivity$2;-><init>(Lcom/isaigu/gymapp/BaseActivity;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 134
    return-void
.end method

.method public showMessageDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "okCallback"    # Ljava/lang/Runnable;

    .line 208
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0036

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/isaigu/gymapp/BaseActivity;->showMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public showMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "okText"    # Ljava/lang/String;
    .param p3, "cancelText"    # Ljava/lang/String;
    .param p4, "okCallback"    # Ljava/lang/Runnable;

    .line 213
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0045

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, "customView":Landroid/view/View;
    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 215
    .local v1, "logTextView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 216
    const v2, 0x7f090190

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 217
    .local v2, "sureButton":Landroid/widget/Button;
    const v3, 0x7f090064

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 218
    .local v3, "cancelButton":Landroid/widget/Button;
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/isaigu/gymapp/BaseActivity;->messageDialog:Landroid/support/v7/app/AlertDialog;

    .line 221
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f0800d1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 222
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v4, Lcom/isaigu/gymapp/BaseActivity$5;

    invoke-direct {v4, p0, p4}, Lcom/isaigu/gymapp/BaseActivity$5;-><init>(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v4, Lcom/isaigu/gymapp/BaseActivity$6;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/BaseActivity$6;-><init>(Lcom/isaigu/gymapp/BaseActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {v3, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v4, p0, Lcom/isaigu/gymapp/BaseActivity;->messageDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "customView":Landroid/view/View;
    .end local v1    # "logTextView":Landroid/widget/TextView;
    .end local v2    # "sureButton":Landroid/widget/Button;
    .end local v3    # "cancelButton":Landroid/widget/Button;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public showOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 70
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public showTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/isaigu/gymapp/BaseActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/BaseActivity$1;-><init>(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showOnUIThread(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method protected showVirtualButton()V
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/isaigu/gymapp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x0

    .line 288
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 289
    return-void
.end method
