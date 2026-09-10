.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;
.super Ljava/lang/Object;
.source "EditUserPersonalDataDialog.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoose(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, "oriPhotoFile":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$300(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$402(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Ljava/io/File;)Ljava/io/File;

    .line 303
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->catchImageFromCamera(Landroid/support/v4/app/Fragment;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$502(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 314
    :goto_1
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "oriPhotoFile":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    .line 307
    .restart local v1    # "oriPhotoFile":Ljava/io/File;
    :try_start_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$300(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/content/Context;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 311
    :goto_2
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$402(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Ljava/io/File;)Ljava/io/File;

    .line 312
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const/16 v4, 0x3eb

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3$1;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;

    iget-object v5, v5, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$3;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$400(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/utils/AndroidUtils;->selectImageFromGallery(Landroid/support/v4/app/Fragment;ILjava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$502(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_1

    .line 308
    :catch_1
    move-exception v0

    .line 309
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
