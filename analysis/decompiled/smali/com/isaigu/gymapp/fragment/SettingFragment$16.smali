.class Lcom/isaigu/gymapp/fragment/SettingFragment$16;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$16;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 401
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$16;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "logo.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 405
    :cond_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$16;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "logo2.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 406
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 407
    .local v0, "datas":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 408
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 409
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/utils/IOUtil;->writeFile(Ljava/io/File;[B)V

    .line 410
    new-instance v4, Lcom/isaigu/gymapp/fragment/SettingFragment$16$1;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$16$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment$16;)V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0    # "datas":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
