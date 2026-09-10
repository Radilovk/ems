.class Lme/weyye/hipermission/PermissionActivity$4;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weyye/hipermission/PermissionActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
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

    .line 158
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$4;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 162
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$4;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {v0}, Lme/weyye/hipermission/PermissionActivity;->access$400(Lme/weyye/hipermission/PermissionActivity;)V

    .line 163
    return-void
.end method
