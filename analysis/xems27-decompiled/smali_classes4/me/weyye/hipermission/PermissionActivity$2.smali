.class Lme/weyye/hipermission/PermissionActivity$2;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weyye/hipermission/PermissionActivity;->showPermissionDialog()V
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

    .line 123
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$2;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    invoke-static {}, Lme/weyye/hipermission/PermissionActivity;->access$200()Lme/weyye/hipermission/PermissionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lme/weyye/hipermission/PermissionActivity;->access$200()Lme/weyye/hipermission/PermissionCallback;

    move-result-object v0

    invoke-interface {v0}, Lme/weyye/hipermission/PermissionCallback;->onClose()V

    .line 129
    :cond_0
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$2;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-virtual {v0}, Lme/weyye/hipermission/PermissionActivity;->finish()V

    .line 130
    return-void
.end method
