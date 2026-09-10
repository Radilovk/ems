.class Lcom/isaigu/gymapp/fragment/SettingFragment$17;
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

    .line 405
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$500(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$402(Lcom/isaigu/gymapp/fragment/SettingFragment;Ljava/io/File;)Ljava/io/File;

    .line 409
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    const/16 v2, 0x3eb

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$17;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$400(Lcom/isaigu/gymapp/fragment/SettingFragment;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/utils/AndroidUtils;->selectImageFromGallery(Landroid/support/v4/app/Fragment;ILjava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$602(Lcom/isaigu/gymapp/fragment/SettingFragment;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 413
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
