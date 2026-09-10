.class Lcom/isaigu/gymapp/fragment/SettingFragment$19;
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

    .line 431
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$19;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$19;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$19;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$700(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 436
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$19;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "logo2.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 440
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 441
    .local v2, "datas":[B
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 442
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 443
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/utils/IOUtil;->writeFile(Ljava/io/File;[B)V

    .line 444
    new-instance v3, Lcom/isaigu/gymapp/fragment/SettingFragment$19$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$19$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment$19;)V

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadFile(Ljava/io/File;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "datas":[B
    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
