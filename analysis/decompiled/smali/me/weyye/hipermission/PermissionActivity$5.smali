.class Lme/weyye/hipermission/PermissionActivity$5;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weyye/hipermission/PermissionActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/weyye/hipermission/PermissionActivity;


# direct methods
.method constructor <init>(Lme/weyye/hipermission/PermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lme/weyye/hipermission/PermissionActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 239
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-virtual {v4}, Lme/weyye/hipermission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 240
    .local v2, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 241
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    const/16 v4, 0x6e

    invoke-virtual {v3, v1, v4}, Lme/weyye/hipermission/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageURI":Landroid/net/Uri;
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    iget-object v3, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {v3}, Lme/weyye/hipermission/PermissionActivity;->access$400(Lme/weyye/hipermission/PermissionActivity;)V

    goto :goto_0
.end method
