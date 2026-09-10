.class final Lcom/maning/updatelibrary/InstallUtils$2;
.super Ljava/lang/Object;
.source "InstallUtils.java"

# interfaces
.implements Lcom/maning/updatelibrary/utils/ActForResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maning/updatelibrary/InstallUtils;->installAPK(Landroid/app/Activity;Ljava/lang/String;Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;


# direct methods
.method constructor <init>(Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/maning/updatelibrary/InstallUtils$2;->val$callBack:Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 242
    invoke-static {}, Lcom/maning/updatelibrary/InstallUtils;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/maning/updatelibrary/InstallUtils$2;->val$callBack:Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Lcom/maning/updatelibrary/InstallUtils$InstallCallBack;->onSuccess()V

    .line 247
    :cond_0
    return-void
.end method
