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

    .line 235
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 239
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-virtual {v1}, Lme/weyye/hipermission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 241
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    const/16 v3, 0x6e

    invoke-virtual {v2, v1, v3}, Lme/weyye/hipermission/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "packageURI":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    iget-object v1, p0, Lme/weyye/hipermission/PermissionActivity$5;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {v1}, Lme/weyye/hipermission/PermissionActivity;->access$400(Lme/weyye/hipermission/PermissionActivity;)V

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
